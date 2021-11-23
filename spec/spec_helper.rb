# frozen_string_literal: true

require 'rspec'
require 'capybara/rspec'
require 'rack/jekyll'
require 'rack/test'
require 'pry'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  jekyll_app = Rack::Jekyll.new(force_build: true)
  sleep 0.1 while jekyll_app.compiling?
  Capybara.app = jekyll_app
end

%w[support/config/*.rb support/pages/*.rb].each do |path|
  Dir[File.join(__dir__, path)].sort.each { |file| require file }
end
