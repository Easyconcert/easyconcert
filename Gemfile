source "https://rubygems.org"
ruby File.read(".ruby-version").strip

gem 'sinatra'
gem 'i18n'
gem 'rdiscount'
gem 'thin'

group :assets do
  gem 'sprockets'
  gem 'coffee-script'
  gem 'sass'
end

group :development do
  gem 'rb-fsevent', '~> 0.9.1'
  gem 'wdm', :platforms => [:mswin, :mingw], :require => false
  gem 'guard'
  gem 'guard-shell'
end

group :test do
  gem 'rake'
  gem 'minitest'
  gem 'rack-test', :require => 'rack/test'
  gem 'webrat'
end
