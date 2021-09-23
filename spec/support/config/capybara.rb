# frozen_string_literal: true

require 'capybara/rspec'
require 'webdrivers'

options = Selenium::WebDriver::Chrome::Options.new
options.add_argument('headless') if ENV['CI']

jekyll_app = Rack::Jekyll.new(force_build: true)
sleep 0.1 while jekyll_app.compiling?
Capybara.app = jekyll_app

Capybara.register_driver(:chrome) do |app|
  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    options: options
  )
end

Capybara.configure do |config|
  config.default_driver = :chrome
  config.javascript_driver = :chrome
  config.enable_aria_label = true
  config.default_max_wait_time = 10
end
