source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'rails', '~> 5.2.3'
gem 'pg'
# Use Puma as the app server
gem 'puma', '~> 3.11'
gem 'haml'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false
gem 'config'
gem 'active_model_serializers', '~> 0.10.0'

group :test do
  gem 'rspec-rails', '~> 3.0'
  gem 'faker'
  gem 'webmock'
  gem 'shoulda-matchers'
end

group :test, :development do
  gem 'factory_bot_rails'
  gem 'pry-rails'
end

group :development do
  gem 'rubocop'
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
