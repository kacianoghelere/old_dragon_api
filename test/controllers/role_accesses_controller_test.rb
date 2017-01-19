require 'test_helper'

class RoleAccessesControllerTest < ActionController::TestCase
  setup do
    @role_access = role_accesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:role_accesses)
  end

  test "should create role_access" do
    assert_difference('RoleAccess.count') do
      post :create, role_access: { id_menu_item: @role_access.id_menu_item, role_id: @role_access.role_id }
    end

    assert_response 201
  end

  test "should show role_access" do
    get :show, id: @role_access
    assert_response :success
  end

  test "should update role_access" do
    put :update, id: @role_access, role_access: { id_menu_item: @role_access.id_menu_item, role_id: @role_access.role_id }
    assert_response 204
  end

  test "should destroy role_access" do
    assert_difference('RoleAccess.count', -1) do
      delete :destroy, id: @role_access
    end

    assert_response 204
  end
end
