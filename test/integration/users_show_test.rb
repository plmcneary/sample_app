require 'test_helper'

class UsersShowTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:malory)
  end

  test "should not show inactive users" do
    get user_path(@user)
    assert_response :redirect
  end
end
