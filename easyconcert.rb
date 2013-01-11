#encoding: utf-8
require 'sinatra'
require 'i18n'
require 'rdiscount'

# Setup
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }
I18n.load_path += Dir[File.join(File.dirname(__FILE__), 'locales', '*.yml').to_s]

# Serve static pages with locale
get %r{/(en|de)?/?(.+)} do |locale, page|
  I18n.locale = locale || settings.default_locale
  render_static [page, current_locale].join(".")
end

get '/' do
  render_static 'idea.de'
end

not_found do
  render_static "not_found"
end