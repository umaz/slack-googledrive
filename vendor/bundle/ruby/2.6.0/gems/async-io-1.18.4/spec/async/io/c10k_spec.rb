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

require 'async/io'
require 'benchmark'

RSpec.describe "echo client/server" do
	# macOS has a rediculously hard time to do this.
	# sudo sysctl -w net.inet.ip.portrange.first=10000
	# sudo sysctl -w net.inet.ip.portrange.hifirst=10000
	# Probably due to the use of select.
	
	let(:repeats) {RUBY_PLATFORM =~ /darwin/ ? 200 : 10000}
	let(:server_address) {Async::IO::Address.tcp('0.0.0.0', 10102)}
	
	def echo_server(server_address)
		Async do |task|
			connection_count = 0
			
			connections_complete = task.async do
				last_count = 0
				
				while connection_count < repeats
					if connection_count != last_count
						puts "#{connection_count}/#{repeats} simultaneous connections."
						last_count = connection_count
					end
					
					task.sleep(1.0)
				end
				
				puts "Releasing all connections..."
			end
			
			# This is a synchronous block within the current task:
			Async::IO::Socket.accept(server_address) do |client|
				connection_count += 1
				
				# Wait until we've got all the connections:
				connections_complete.wait
				
				# This is an asynchronous block within the current reactor:
				data = client.read(512)
				client.write(data)
			end
		end
	ensure
		puts "echo_server: #{$!.inspect}"
	end
	
	def echo_client(server_address, data, responses)
		Async do |task|
			begin
				Async::IO::Socket.connect(server_address) do |peer|
					result = peer.write(data)
					
					message = peer.read(512)
					
					responses << message
				end
			rescue Errno::ECONNREFUSED, Errno::ECONNRESET, Errno::ETIMEDOUT, Errno::EADDRINUSE
				puts "#{data}: #{$!}..."
				# If the connection was refused, it means the server probably can't accept connections any faster than it currently is, so we simply retry.
				retry
			end
		end
	end
	
	def fork_server
		pid = fork do
			echo_server(server_address)
		end
		
		yield
	ensure
		Process.kill(:KILL, pid)
		Process.wait(pid)
	end
	
	around(:each) do |example|
		duration = Benchmark.realtime do
			example.run
		end
		
		example.reporter.message "Handled #{repeats} connections in #{duration.round(2)}s: #{(repeats/duration).round(2)}req/s"
	end
	
	it "should send/receive 10,000 messages" do
		fork_server do
			Async do |task|
				responses = []
				
				tasks = repeats.times.collect do |i|
					# puts "Starting client #{i} on #{task}..." if (i % 1000) == 0
					
					echo_client(server_address, "Hello World #{i}", responses)
				end
				
				# task.reactor.print_hierarchy
				
				tasks.each(&:wait)
				
				expect(responses.count).to be repeats
			end
		end
	end
end
