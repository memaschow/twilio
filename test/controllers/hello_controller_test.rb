require 'test_helper'

class HelloControllerTest < ActionController::TestCase
  test "should get sms" do
    get :sms
    assert_response :success
  end

end
