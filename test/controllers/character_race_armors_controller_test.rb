require 'test_helper'

class CharacterRaceArmorsControllerTest < ActionController::TestCase
  setup do
    @character_race_armor = character_race_armors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_race_armors)
  end

  test "should create character_race_armor" do
    assert_difference('CharacterRaceArmor.count') do
      post :create, character_race_armor: { armor_type_id: @character_race_armor.armor_type_id, character_race_id: @character_race_armor.character_race_id }
    end

    assert_response 201
  end

  test "should show character_race_armor" do
    get :show, id: @character_race_armor
    assert_response :success
  end

  test "should update character_race_armor" do
    put :update, id: @character_race_armor, character_race_armor: { armor_type_id: @character_race_armor.armor_type_id, character_race_id: @character_race_armor.character_race_id }
    assert_response 204
  end

  test "should destroy character_race_armor" do
    assert_difference('CharacterRaceArmor.count', -1) do
      delete :destroy, id: @character_race_armor
    end

    assert_response 204
  end
end
