require 'test_helper'

class CodeAmphoesControllerTest < ActionController::TestCase
  setup do
    @code_ampho = code_amphoes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:code_amphoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create code_ampho" do
    assert_difference('CodeAmphoe.count') do
      post :create, code_ampho: @code_ampho.attributes
    end

    assert_redirected_to code_ampho_path(assigns(:code_ampho))
  end

  test "should show code_ampho" do
    get :show, id: @code_ampho.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @code_ampho.to_param
    assert_response :success
  end

  test "should update code_ampho" do
    put :update, id: @code_ampho.to_param, code_ampho: @code_ampho.attributes
    assert_redirected_to code_ampho_path(assigns(:code_ampho))
  end

  test "should destroy code_ampho" do
    assert_difference('CodeAmphoe.count', -1) do
      delete :destroy, id: @code_ampho.to_param
    end

    assert_redirected_to code_amphoes_path
  end
end
