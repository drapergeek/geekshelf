require 'rubygems'
require 'spork'
Spork.prefork do
  ENV["RAILS_ENV"] ||= 'test'
  require File.expand_path("../../config/environment", __FILE__)
  require 'rspec/rails'
  require 'rspec/autorun'

  # Requires supporting ruby files with custom matchers and macros, etc,
  # in spec/support/ and its subdirectories.

  RSpec.configure do |config|
    config.mock_with :mocha
    config.use_transactional_fixtures = true
    config.infer_base_class_for_anonymous_controllers = false
    config.include FactoryGirl::Syntax::Methods
  end

end

Spork.each_run do
  # This code will be run each time you run your specs.
  Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

end


