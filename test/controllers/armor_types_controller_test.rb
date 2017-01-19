require 'test_helper'

class ArmorTypesControllerTest < ActionController::TestCase
  setup do
    @armor_type = armor_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:armor_types)
  end

  test "should create armor_type" do
    assert_difference('ArmorType.count') do
      post :create, armor_type: { name: @armor_type.name }
    end

    assert_response 201
  end

  test "should show armor_type" do
    get :show, id: @armor_type
    assert_response :success
  end

  test "should update armor_type" do
    put :update, id: @armor_type, armor_type: { name: @armor_type.name }
    assert_response 204
  end

  test "should destroy armor_type" do
    assert_difference('ArmorType.count', -1) do
      delete :destroy, id: @armor_type
    end

    assert_response 204
  end
end
