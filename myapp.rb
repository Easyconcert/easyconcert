#encoding: utf-8
require 'sinatra'
require 'rdiscount'

# Setup
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }

get '/' do
  render_static "welcome"
end

not_found do
  render_static "not_found"
end