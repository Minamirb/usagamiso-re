require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get demonstration" do
    get :demonstration
    assert_response :success
  end

end
