require 'test_helper'

class WeaponTypesControllerTest < ActionController::TestCase
  setup do
    @weapon_type = weapon_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weapon_types)
  end

  test "should create weapon_type" do
    assert_difference('WeaponType.count') do
      post :create, weapon_type: { name: @weapon_type.name }
    end

    assert_response 201
  end

  test "should show weapon_type" do
    get :show, id: @weapon_type
    assert_response :success
  end

  test "should update weapon_type" do
    put :update, id: @weapon_type, weapon_type: { name: @weapon_type.name }
    assert_response 204
  end

  test "should destroy weapon_type" do
    assert_difference('WeaponType.count', -1) do
      delete :destroy, id: @weapon_type
    end

    assert_response 204
  end
end
