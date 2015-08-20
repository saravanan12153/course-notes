require 'test_helper'

class UserTest < ActiveSupport::TestCase

  should have_many(:courses)

  test "roles" do
    user = User.new
    assert user.respond_to? :role
  end

end
