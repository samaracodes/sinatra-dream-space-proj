source 'http://rubygems.org'


ruby "3.0.0"
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
gem 'rails'
gem 'psych', '< 4'
gem 'rspec-rails'
gem 'sidekiq'

group :development do 
  gem 'sqlite3'
end

group :production do 
  gem 'pg'
end

group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'rack-test'
  gem 'database_cleaner', git: 'https://github.com/bmabey/database_cleaner.git'
end
