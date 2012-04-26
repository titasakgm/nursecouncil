require 'test_helper'

class CodeTambonsControllerTest < ActionController::TestCase
  setup do
    @code_tambon = code_tambons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:code_tambons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create code_tambon" do
    assert_difference('CodeTambon.count') do
      post :create, code_tambon: @code_tambon.attributes
    end

    assert_redirected_to code_tambon_path(assigns(:code_tambon))
  end

  test "should show code_tambon" do
    get :show, id: @code_tambon.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @code_tambon.to_param
    assert_response :success
  end

  test "should update code_tambon" do
    put :update, id: @code_tambon.to_param, code_tambon: @code_tambon.attributes
    assert_redirected_to code_tambon_path(assigns(:code_tambon))
  end

  test "should destroy code_tambon" do
    assert_difference('CodeTambon.count', -1) do
      delete :destroy, id: @code_tambon.to_param
    end

    assert_redirected_to code_tambons_path
  end
end
