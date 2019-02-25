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

require 'async/io/udp_socket'

RSpec.describe Async::IO::Socket do
	include_context Async::RSpec::Reactor
	
	# Shared port for localhost network tests.
	let(:server_address) {Async::IO::Address.udp("127.0.0.1", 6778)}
	let(:data) {"The quick brown fox jumped over the lazy dog."}
	
	let!(:server_task) do
		reactor.async do
			Async::IO::Socket.bind(server_address) do |server|
				packet, address = server.recvfrom(512)
				
				server.send(packet, 0, address)
			end
		end
	end
	
	describe 'basic udp server' do
		it "should echo data back to peer" do
			reactor.async do
				Async::IO::Socket.connect(server_address) do |client|
					client.send(data)
					response = client.recv(512)
					
					expect(response).to be == data
				end
			end
		end
		
		it "should use unconnected socket" do
			reactor.async do
				Async::IO::UDPSocket.wrap(server_address.afamily) do |client|
					client.send(data, 0, server_address)
					response, address = client.recvfrom(512)
					
					expect(response).to be == data
				end
			end
		end
	end
end
