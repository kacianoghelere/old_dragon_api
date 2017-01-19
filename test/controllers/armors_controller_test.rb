require 'test_helper'

class ArmorsControllerTest < ActionController::TestCase
  setup do
    @armor = armors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:armors)
  end

  test "should create armor" do
    assert_difference('Armor.count') do
      post :create, armor: { alignment_id: @armor.alignment_id, armor_class: @armor.armor_class, armor_type_id: @armor.armor_type_id, description: @armor.description, movement_reduction: @armor.movement_reduction, name: @armor.name, origin_id: @armor.origin_id, price: @armor.price, user_id: @armor.user_id }
    end

    assert_response 201
  end

  test "should show armor" do
    get :show, id: @armor
    assert_response :success
  end

  test "should update armor" do
    put :update, id: @armor, armor: { alignment_id: @armor.alignment_id, armor_class: @armor.armor_class, armor_type_id: @armor.armor_type_id, description: @armor.description, movement_reduction: @armor.movement_reduction, name: @armor.name, origin_id: @armor.origin_id, price: @armor.price, user_id: @armor.user_id }
    assert_response 204
  end

  test "should destroy armor" do
    assert_difference('Armor.count', -1) do
      delete :destroy, id: @armor
    end

    assert_response 204
  end
end
