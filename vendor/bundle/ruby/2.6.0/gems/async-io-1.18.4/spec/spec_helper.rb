
require 'covered/rspec'

if RUBY_ENGINE == "truffleruby"
	warn "Workarounds for TruffleRuby enabled..."
	require_relative 'truffle'
end

# Shared rspec helpers:
require "async/rspec"

require_relative 'addrinfo'

RSpec.configure do |config|
	# Enable flags like --only-failures and --next-failure
	config.example_status_persistence_file_path = ".rspec_status"

	config.expect_with :rspec do |c|
		c.syntax = :expect
	end
end
