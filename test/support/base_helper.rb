ENV['RACK_ENV'] = 'test'

require 'bundler'
Bundler.require :test
gem 'minitest'
require 'minitest/autorun'
require "turn/autorun"

# Configure test output
Turn.config.format = :dot