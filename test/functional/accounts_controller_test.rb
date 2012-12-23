require 'test_helper'

class AccountsControllerTest < ActionController::TestCase
  test "should get start" do
    get :start
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

end
