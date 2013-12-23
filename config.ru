require 'bundler'
Bundler.require :default, :assets, (ENV['RACK_ENV'] || '').to_sym
require 'sinatra/base'
require 'sprockets'
require './app'

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'assets/javascripts'
  environment.append_path 'assets/stylesheets'
  run environment
end

map '/' do
  run Sinatra::Application
end
