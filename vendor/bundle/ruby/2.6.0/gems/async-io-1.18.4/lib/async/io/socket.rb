# Copyright, 2017, by Samuel G. D. Williams. <http://www.codeotaku.com>
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

require 'socket'
require 'async/task'

require_relative 'generic'

module Async
	module IO
		module Peer
			# Is it likely that the socket is still connected?
			# May return false positive, but won't return false negative.
			def connected?
				return false if @io.closed?
				
				# If we can wait for the socket to become readable, we know that the socket may still be open.
				result = to_io.recv_nonblock(1, Socket::MSG_PEEK, exception: false)
				
				# Either there was some data available, or we can wait to see if there is data avaialble.
				return !result.empty? || result == :wait_readable
				
			rescue Errno::ECONNRESET
				# This might be thrown by recv_nonblock.
				return false
			end
			
			# Best effort to set *_NODELAY if it makes sense. Swallows errors where possible.
			def sync=(value)
				super
				
				case self.protocol
				when 0, Socket::IPPROTO_TCP
					self.setsockopt(Socket::IPPROTO_TCP, Socket::TCP_NODELAY, value ? 1 : 0)
				else
					warn "Unsure how to sync=#{value} for #{self.protocol}!"
				end
			rescue Errno::EINVAL
				# On Darwin, sometimes occurs when the connection is not yet fully formed. Empirically, TCP_NODELAY is enabled despite this result.
			end
			
			def sync
				case self.protocol
				when Socket::IPPROTO_TCP
					self.getsockopt(Socket::IPPROTO_TCP, Socket::TCP_NODELAY).bool
				else
					true
				end && super
			end
			
			def type
				self.local_address.socktype
			end
			
			def protocol
				self.local_address.protocol
			end
		end
		
		class BasicSocket < Generic
			wraps ::BasicSocket, :setsockopt, :connect_address, :close_read, :close_write, :local_address, :remote_address, :do_not_reverse_lookup, :do_not_reverse_lookup=, :shutdown, :getsockopt, :getsockname, :getpeername, :getpeereid
			
			wrap_blocking_method :recv, :recv_nonblock
			wrap_blocking_method :recvmsg, :recvmsg_nonblock
			
			wrap_blocking_method :sendmsg, :sendmsg_nonblock
			wrap_blocking_method :send, :sendmsg_nonblock, invert: false
			
			include Peer
		end
		
		module Server
			def accept_each(timeout: nil, task: Task.current)
				task.annotate "accepting connections #{self.local_address.inspect}"
				
				while true
					self.accept(timeout: timeout, task: task) do |io, address|
						yield io, address, task: task
					end
				end
			end
		end
		
		class Socket < BasicSocket
			wraps ::Socket, :bind, :ipv6only!, :listen
			
			wrap_blocking_method :recvfrom, :recvfrom_nonblock
			
			include ::Socket::Constants
			
			def connect(*args)
				begin
					async_send(:connect_nonblock, *args)
				rescue Errno::EISCONN
					# We are now connected.
				end
			end
			
			alias connect_nonblock connect
			
			# @param duration [Numeric] the maximum time to wait for accepting a connection, if specified.
			def accept(timeout: nil, task: Task.current)
				peer, address = async_send(:accept_nonblock, timeout: timeout)
				wrapper = Socket.new(peer, task.reactor)
				
				wrapper.timeout = self.timeout
				
				return wrapper, address unless block_given?
				
				task.async do |task|
					task.annotate "incoming connection #{address.inspect}"
					
					begin
						yield wrapper, address
					ensure
						wrapper.close
					end
				end
			end
			
			alias accept_nonblock accept
			alias sysaccept accept
			
			def self.build(*args, timeout: nil, task: Task.current)
				socket = wrapped_klass.new(*args)
				
				yield socket
				
				wrapper = self.new(socket, task.reactor)
				wrapper.timeout = timeout
				
				return wrapper
			rescue Exception
				socket.close if socket
				
				raise
			end
			
			# Establish a connection to a given `remote_address`.
			# @example
			#  socket = Async::IO::Socket.connect(Async::IO::Address.tcp("8.8.8.8", 53))
			# @param remote_address [Addrinfo] The remote address to connect to.
			# @param local_address [Addrinfo] The local address to bind to before connecting.
			# @option protcol [Integer] The socket protocol to use.
			def self.connect(remote_address, local_address = nil, reuse_port: nil, task: Task.current, **options)
				Async.logger.debug(self) {"Connecting to #{remote_address.inspect}"}
				
				task.annotate "connecting to #{remote_address.inspect}"
				
				wrapper = build(remote_address.afamily, remote_address.socktype, remote_address.protocol, **options) do |socket|
					if reuse_port
						socket.setsockopt(::Socket::SOL_SOCKET, ::Socket::SO_REUSEADDR, 1)
					end
					
					if local_address
						socket.bind(local_address.to_sockaddr)
					end
				end
				
				begin
					wrapper.connect(remote_address.to_sockaddr)
					task.annotate "connected to #{remote_address.inspect}"
				rescue Exception
					wrapper.close
					raise
				end
				
				return wrapper unless block_given?
				
				begin
					yield wrapper, task
				ensure
					wrapper.close
				end
			end
			
			# Bind to a local address.
			# @example
			#  socket = Async::IO::Socket.bind(Async::IO::Address.tcp("0.0.0.0", 9090))
			# @param local_address [Address] The local address to bind to.
			# @option protocol [Integer] The socket protocol to use.
			# @option reuse_port [Boolean] Allow this port to be bound in multiple processes.
			def self.bind(local_address, protocol: 0, reuse_port: nil, reuse_address: true, task: Task.current, **options, &block)
				Async.logger.debug(self) {"Binding to #{local_address.inspect}"}
				
				wrapper = build(local_address.afamily, local_address.socktype, protocol, **options) do |socket|
					if reuse_address
						socket.setsockopt(::Socket::SOL_SOCKET, ::Socket::SO_REUSEADDR, 1)
					end
					
					if reuse_port
						socket.setsockopt(::Socket::SOL_SOCKET, ::Socket::SO_REUSEPORT, 1)
					end
					
					socket.bind(local_address.to_sockaddr)
				end
				
				return wrapper unless block_given?
				
				task.async do |task|
					task.annotate "binding to #{wrapper.local_address.inspect}"
					
					begin
						yield wrapper, task
					ensure
						wrapper.close
					end
				end
			end
			
			# Bind to a local address and accept connections in a loop.
			def self.accept(*args, backlog: SOMAXCONN, &block)
				bind(*args) do |server, task|
					server.listen(backlog) if backlog
					
					server.accept_each(task: task, &block)
				end
			end
			
			include Server
			
			def self.pair(*args)
				::Socket.pair(*args).map(&self.method(:new))
			end
		end
		
		class IPSocket < BasicSocket
			wraps ::IPSocket, :addr, :peeraddr
			
			wrap_blocking_method :recvfrom, :recvfrom_nonblock
		end
	end
end
