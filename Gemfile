source 'http://rubygems.org'

gem 'sinatra'
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

group :development, :production do
  gem 'pg', '0.15.1'
end

group :test do
  gem 'sqlite3', '1.4.2'
end

group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'rack-test'
  gem 'database_cleaner', git: 'https://github.com/bmabey/database_cleaner.git'
end
