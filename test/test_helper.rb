ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  include ActionDispatch::TestProcess

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Not storing uploads in the tests
  CarrierWave::Mount::Mounter.class_eval { def store!; end }
  CarrierWave.root = Rails.root.join('test/fixtures/files/uploads')

  # Add more helper methods to be used by all tests here...
  def after_teardown
    super
    CarrierWave.clean_cached_files!(0)
  end
end
