require 'test_helper'

class CodePrenamesControllerTest < ActionController::TestCase
  setup do
    @code_prename = code_prenames(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:code_prenames)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create code_prename" do
    assert_difference('CodePrename.count') do
      post :create, code_prename: @code_prename.attributes
    end

    assert_redirected_to code_prename_path(assigns(:code_prename))
  end

  test "should show code_prename" do
    get :show, id: @code_prename.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @code_prename.to_param
    assert_response :success
  end

  test "should update code_prename" do
    put :update, id: @code_prename.to_param, code_prename: @code_prename.attributes
    assert_redirected_to code_prename_path(assigns(:code_prename))
  end

  test "should destroy code_prename" do
    assert_difference('CodePrename.count', -1) do
      delete :destroy, id: @code_prename.to_param
    end

    assert_redirected_to code_prenames_path
  end
end
