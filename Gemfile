source 'http://rubygems.org'

gem 'sinatra'
ruby "3.0.0"
gem 'activerecord'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'
gem 'rake'
gem 'require_all'
gem 'thin'
gem 'shotgun'
gem 'pry'
gem 'bcrypt'
gem 'tux'
gem 'sinatra-flash'


group :development do
  gem 'sqlite3'
  gem "tux"
end
 
group :production do
  gem 'pg'
  gem 'sqlite3'
end

group :test do
  gem 'sqlite3'
end

group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'rack-test'
  gem 'database_cleaner', git: 'https://github.com/bmabey/database_cleaner.git'
end
