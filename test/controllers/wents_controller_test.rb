require 'test_helper'

class WentsControllerTest < ActionController::TestCase
  setup do
    @went = wents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create went" do
    assert_difference('Went.count') do
      post :create, went: { shop_id: @went.shop_id, user_id: @went.user_id }
    end

    assert_redirected_to went_path(assigns(:went))
  end

  test "should show went" do
    get :show, id: @went
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @went
    assert_response :success
  end

  test "should update went" do
    patch :update, id: @went, went: { shop_id: @went.shop_id, user_id: @went.user_id }
    assert_redirected_to went_path(assigns(:went))
  end

  test "should destroy went" do
    assert_difference('Went.count', -1) do
      delete :destroy, id: @went
    end

    assert_redirected_to wents_path
  end
end
