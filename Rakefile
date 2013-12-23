require 'rake/testtask'

task default: :test

Rake::TestTask.new do |t|
  t.pattern = 'test/**/*_test.rb'
end

# Heroku deployment
desc "Deploy to **live** Heroku and compile assets"
task :deploy do
  system "git push heroku master"
end
