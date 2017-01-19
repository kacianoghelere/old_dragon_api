require 'test_helper'

class WeaponsControllerTest < ActionController::TestCase
  setup do
    @weapon = weapons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weapons)
  end

  test "should create weapon" do
    assert_difference('Weapon.count') do
      post :create, weapon: { alignment_id: @weapon.alignment_id, damage: @weapon.damage, description: @weapon.description, dice_id: @weapon.dice_id, initiative: @weapon.initiative, material_type_id: @weapon.material_type_id, name: @weapon.name, origin_id: @weapon.origin_id, price: @weapon.price, range: @weapon.range, ranged: @weapon.ranged, user_id: @weapon.user_id, weapon_type_id: @weapon.weapon_type_id, weight: @weapon.weight }
    end

    assert_response 201
  end

  test "should show weapon" do
    get :show, id: @weapon
    assert_response :success
  end

  test "should update weapon" do
    put :update, id: @weapon, weapon: { alignment_id: @weapon.alignment_id, damage: @weapon.damage, description: @weapon.description, dice_id: @weapon.dice_id, initiative: @weapon.initiative, material_type_id: @weapon.material_type_id, name: @weapon.name, origin_id: @weapon.origin_id, price: @weapon.price, range: @weapon.range, ranged: @weapon.ranged, user_id: @weapon.user_id, weapon_type_id: @weapon.weapon_type_id, weight: @weapon.weight }
    assert_response 204
  end

  test "should destroy weapon" do
    assert_difference('Weapon.count', -1) do
      delete :destroy, id: @weapon
    end

    assert_response 204
  end
end
