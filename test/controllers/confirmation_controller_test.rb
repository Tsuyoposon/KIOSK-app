require 'test_helper'

class ConfirmationControllerTest < ActionController::TestCase
  test "should get status" do
    get :status
    assert_response :success
  end

  test "should get ranking" do
    get :ranking
    assert_response :success
  end

end
