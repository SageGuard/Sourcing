require 'test_helper'

class DisclaimersControllerTest < ActionController::TestCase
  test "should get terms" do
    get :terms
    assert_response :success
  end

  test "should get refund" do
    get :refund
    assert_response :success
  end

  test "should get privacy" do
    get :privacy
    assert_response :success
  end

end
