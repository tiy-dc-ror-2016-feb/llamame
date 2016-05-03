require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

ENV["RAILS_ENV"] ||= "test"

require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "capybara/rails"

module  ActiveSupport
  class TestCase
    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all
  end
end

DatabaseCleaner.strategy = :truncation

class ActionDispatch::IntegrationTest
  # Make the Capybara DSL available in all integration tests
  include Capybara::DSL
  include Warden::Test::Helpers
  Warden.test_mode!
  self.use_transactional_fixtures = false

  setup do
    Capybara.current_driver = :selenium
    DatabaseCleaner.start
  end

  # Reset sessions and driver between tests
  # Use super wherever this method is redefined in your individual test classes
  def teardown
    DatabaseCleaner.clean
    Warden.test_reset!
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end
end
