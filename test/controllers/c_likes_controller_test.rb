require 'test_helper'

class CLikesControllerTest < ActionController::TestCase
  setup do
    @c_like = c_likes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:c_likes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create c_like" do
    assert_difference('CLike.count') do
      post :create, c_like: { comment_id: @c_like.comment_id, user_id: @c_like.user_id }
    end

    assert_redirected_to c_like_path(assigns(:c_like))
  end

  test "should show c_like" do
    get :show, id: @c_like
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @c_like
    assert_response :success
  end

  test "should update c_like" do
    patch :update, id: @c_like, c_like: { comment_id: @c_like.comment_id, user_id: @c_like.user_id }
    assert_redirected_to c_like_path(assigns(:c_like))
  end

  test "should destroy c_like" do
    assert_difference('CLike.count', -1) do
      delete :destroy, id: @c_like
    end

    assert_redirected_to c_likes_path
  end
end
