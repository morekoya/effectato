ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  def sign_in_as(user, password, admin=false)
    post login_path, params: {session: {email: user.email, password: password}}
    if admin
      user.admin=true
    end
  end
end
