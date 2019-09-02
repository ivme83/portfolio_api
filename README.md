# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

rails new portfolio_api --api -T --database=postgresql

psql -U postgres

create role portfolio_api with createdb login password 'password1';

database.yml
development:
  <<: *default
  database: portfolio_api
  username: portfolio_api
  password: password1
  host: localhost

test:
  <<: *default
  database: portfolio_api_test
  username: portfolio_api
  password: password1
  host: localhost

production:
  <<: *default
  database: portfolio_api_production
  username: portfolio_api
  password: <%= ENV['PORTFOLIO_API_DATABASE_PASSWORD'] %>

gemfile
gem 'devise'
gem 'omniauth'
gem 'devise_token_auth'
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 3.5'
end

group :development do
end

group :test do
  gem 'factory_bot_rails', '~> 4.0'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'faker'
  gem 'database_cleaner'
end

rake db:setup
rails generate devise:install
rails g devise_token_auth:install User auth
rails db:migrate