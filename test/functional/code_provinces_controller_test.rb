require 'test_helper'

class CodeProvincesControllerTest < ActionController::TestCase
  setup do
    @code_province = code_provinces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:code_provinces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create code_province" do
    assert_difference('CodeProvince.count') do
      post :create, code_province: @code_province.attributes
    end

    assert_redirected_to code_province_path(assigns(:code_province))
  end

  test "should show code_province" do
    get :show, id: @code_province.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @code_province.to_param
    assert_response :success
  end

  test "should update code_province" do
    put :update, id: @code_province.to_param, code_province: @code_province.attributes
    assert_redirected_to code_province_path(assigns(:code_province))
  end

  test "should destroy code_province" do
    assert_difference('CodeProvince.count', -1) do
      delete :destroy, id: @code_province.to_param
    end

    assert_redirected_to code_provinces_path
  end
end
