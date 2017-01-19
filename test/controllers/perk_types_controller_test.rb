require 'test_helper'

class PerkTypesControllerTest < ActionController::TestCase
  setup do
    @perk_type = perk_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:perk_types)
  end

  test "should create perk_type" do
    assert_difference('PerkType.count') do
      post :create, perk_type: { name: @perk_type.name }
    end

    assert_response 201
  end

  test "should show perk_type" do
    get :show, id: @perk_type
    assert_response :success
  end

  test "should update perk_type" do
    put :update, id: @perk_type, perk_type: { name: @perk_type.name }
    assert_response 204
  end

  test "should destroy perk_type" do
    assert_difference('PerkType.count', -1) do
      delete :destroy, id: @perk_type
    end

    assert_response 204
  end
end
