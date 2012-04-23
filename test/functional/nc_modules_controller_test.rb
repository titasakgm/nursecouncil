require 'test_helper'

class NcModulesControllerTest < ActionController::TestCase
  setup do
    @nc_module = nc_modules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nc_modules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nc_module" do
    assert_difference('NcModule.count') do
      post :create, nc_module: @nc_module.attributes
    end

    assert_redirected_to nc_module_path(assigns(:nc_module))
  end

  test "should show nc_module" do
    get :show, id: @nc_module.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nc_module.to_param
    assert_response :success
  end

  test "should update nc_module" do
    put :update, id: @nc_module.to_param, nc_module: @nc_module.attributes
    assert_redirected_to nc_module_path(assigns(:nc_module))
  end

  test "should destroy nc_module" do
    assert_difference('NcModule.count', -1) do
      delete :destroy, id: @nc_module.to_param
    end

    assert_redirected_to nc_modules_path
  end
end
