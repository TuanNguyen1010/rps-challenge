ENV["RACK_ENV"] = "test"

require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'
require 'features/web_helpers'

require File.join(File.dirname(__FILE__), '..', 'app.rb')

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([])
SimpleCov.start

RSpec.configure do |config|
  config.after(:suite) do
    puts
    puts "\e[33mHave you considered running rubocop? It will help you improve your code!\e[0m"
    puts "\e[33mTry it now! Just run: rubocop\e[0m"
  end
end

Capybara.app = RPS
