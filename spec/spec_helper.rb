# frozen_string_literal: true

ENV['RAILS_ENV'] ||= 'test'

require File.expand_path('../config/environment', __dir__)
require 'rspec/rails'
require 'webmock/rspec'
WebMock.disable_net_connect!(allow_localhost: true)

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.before(:each) do
    stub_request(:get, /api.example.com/)
      .with(headers: { 'Accept' => '*/*', 'User-Agent' => 'Ruby' })
      .to_return(
        status: 200,
        body: {
          data:
            [
              title: 'Sample title',
              department: 'Sample department',
              media_avatar: 'avatar url',
              other_column: 'bleh'
            ]
        }.to_json,
        headers: { 'Content-Type' => 'application/json' }
      )
  end
end
