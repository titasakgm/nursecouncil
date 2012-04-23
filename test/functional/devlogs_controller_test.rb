require 'test_helper'

class DevlogsControllerTest < ActionController::TestCase
  setup do
    @devlog = devlogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:devlogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create devlog" do
    assert_difference('Devlog.count') do
      post :create, devlog: @devlog.attributes
    end

    assert_redirected_to devlog_path(assigns(:devlog))
  end

  test "should show devlog" do
    get :show, id: @devlog.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @devlog.to_param
    assert_response :success
  end

  test "should update devlog" do
    put :update, id: @devlog.to_param, devlog: @devlog.attributes
    assert_redirected_to devlog_path(assigns(:devlog))
  end

  test "should destroy devlog" do
    assert_difference('Devlog.count', -1) do
      delete :destroy, id: @devlog.to_param
    end

    assert_redirected_to devlogs_path
  end
end
