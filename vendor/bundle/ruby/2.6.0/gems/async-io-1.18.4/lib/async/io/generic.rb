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

require 'async/wrapper'
require 'forwardable'

module Async
	module IO
		# Convert a Ruby ::IO object to a wrapped instance:
		def self.try_convert(io, &block)
			if wrapper_class = Generic::WRAPPERS[io.class]
				wrapper_class.new(io, &block)
			else
				raise ArgumentError.new("Unsure how to wrap #{io.class}!")
			end
		end
		
		# Represents an asynchronous IO within a reactor.
		class Generic < Wrapper
			extend Forwardable
			
			WRAPPERS = {}
			
			class << self
				# @!macro [attach] wrap_blocking_method
				#   @method $1
				#   Invokes `$2` on the underlying {io}. If the operation would block, the current task is paused until the operation can succeed, at which point it's resumed and the operation is completed.
				def wrap_blocking_method(new_name, method_name, invert: true)
					define_method(new_name) do |*args|
						async_send(method_name, *args)
					end
					
					if invert
						# We define the original _nonblock method to call the async variant. We ignore options.
						# define_method(method_name) do |*args, **options|
						# 	self.__send__(new_name, *args)
						# end
						def_delegators :@io, method_name
					end
				end
				
				attr :wrapped_klass
				
				def wraps(klass, *additional_methods)
					@wrapped_klass = klass
					WRAPPERS[klass] = self
					
					# These are methods implemented by the wrapped class, that we aren't overriding, that may be of interest:
					# fallback_methods = klass.instance_methods(false) - instance_methods
					# puts "Forwarding #{klass} methods #{fallback_methods} to @io"
					
					def_delegators :@io, *additional_methods
				end
				
				# Instantiate a wrapped instance of the class, and optionally yield it to a given block, closing it afterwards.
				def wrap(*args)
					wrapper = self.new(@wrapped_klass.new(*args))
					
					return wrapper unless block_given?
					
					begin
						yield wrapper
					ensure
						wrapper.close
					end
				end
			end
			
			wraps ::IO, :external_encoding, :internal_encoding, :autoclose?, :autoclose=, :pid, :stat, :binmode, :flush, :set_encoding, :to_io, :to_i, :reopen, :fileno, :fsync, :fdatasync, :sync, :sync=, :tell, :seek, :rewind, :pos, :pos=, :eof, :eof?, :close_on_exec?, :close_on_exec=, :closed?, :close_read, :close_write, :isatty, :tty?, :binmode?, :sysseek, :advise, :ioctl, :fcntl, :nread, :ready?, :pread, :pwrite, :pathconf
			
			# @example
			#   data = io.read(512)
			wrap_blocking_method :read, :read_nonblock
			alias sysread read
			alias readpartial read
			
			# @example
			#   io.write("Hello World")
			wrap_blocking_method :write, :write_nonblock
			alias syswrite write
			alias << write
			
			def dup
				super.tap do |copy|
					copy.timeout = self.timeout
				end
			end
			
			def wait(timeout = self.timeout, mode = :read)
				case mode
				when :read
					wait_readable(timeout)
				when :write
					wait_writable(timeout)
				else
					wait_any(:rw, timeout)
				end
			rescue TimeoutError
				return nil
			end
			
			def nonblock
				true
			end
			
			def nonblock= value
				true
			end
			
			def nonblock?
				true
			end
			
			def connected?
				!@io.closed?
			end
			
			attr_accessor :timeout
			
			protected
			
			def async_send(*args, timeout: self.timeout)
				while true
					result = @io.__send__(*args, exception: false)
					
					case result
					when :wait_readable
						wait_readable(timeout)
					when :wait_writable
						wait_writable(timeout)
					else
						return result
					end
				end
			end
		end
	end
end
