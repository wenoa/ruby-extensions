require "simplecov"
require "simplecov-console"

SimpleCov.start if ENV["COVERAGE"]

require_relative "../lib/extensions"
