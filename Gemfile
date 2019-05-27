# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'active_model_serializers', '~> 0.10.0'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'config'
gem 'haml'
gem 'pg'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.3'

group :test do
  gem 'faker'
  gem 'rspec-rails', '~> 3.0'
  gem 'shoulda-matchers'
  gem 'webmock'
end

group :test, :development do
  gem 'factory_bot_rails'
  gem 'pry-rails'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rubocop'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end
