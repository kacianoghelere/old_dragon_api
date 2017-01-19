require 'test_helper'

class CharacterRaceWeaponsControllerTest < ActionController::TestCase
  setup do
    @character_race_weapon = character_race_weapons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_race_weapons)
  end

  test "should create character_race_weapon" do
    assert_difference('CharacterRaceWeapon.count') do
      post :create, character_race_weapon: { character_race_id: @character_race_weapon.character_race_id, weapon_type_id: @character_race_weapon.weapon_type_id }
    end

    assert_response 201
  end

  test "should show character_race_weapon" do
    get :show, id: @character_race_weapon
    assert_response :success
  end

  test "should update character_race_weapon" do
    put :update, id: @character_race_weapon, character_race_weapon: { character_race_id: @character_race_weapon.character_race_id, weapon_type_id: @character_race_weapon.weapon_type_id }
    assert_response 204
  end

  test "should destroy character_race_weapon" do
    assert_difference('CharacterRaceWeapon.count', -1) do
      delete :destroy, id: @character_race_weapon
    end

    assert_response 204
  end
end
