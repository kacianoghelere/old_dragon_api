require 'test_helper'

class CharacterClassWeaponTypesControllerTest < ActionController::TestCase
  setup do
    @character_class_weapon_type = character_class_weapon_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_class_weapon_types)
  end

  test "should create character_class_weapon_type" do
    assert_difference('CharacterClassWeaponType.count') do
      post :create, character_class_weapon_type: { character_class_id: @character_class_weapon_type.character_class_id, weapon_type_id: @character_class_weapon_type.weapon_type_id }
    end

    assert_response 201
  end

  test "should show character_class_weapon_type" do
    get :show, id: @character_class_weapon_type
    assert_response :success
  end

  test "should update character_class_weapon_type" do
    put :update, id: @character_class_weapon_type, character_class_weapon_type: { character_class_id: @character_class_weapon_type.character_class_id, weapon_type_id: @character_class_weapon_type.weapon_type_id }
    assert_response 204
  end

  test "should destroy character_class_weapon_type" do
    assert_difference('CharacterClassWeaponType.count', -1) do
      delete :destroy, id: @character_class_weapon_type
    end

    assert_response 204
  end
end
