require 'test_helper'

class CharacterRaceTraitsControllerTest < ActionController::TestCase
  setup do
    @character_race_trait = character_race_traits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_race_traits)
  end

  test "should create character_race_trait" do
    assert_difference('CharacterRaceTrait.count') do
      post :create, character_race_trait: {
        character_race_id: @character_race_trait.character_race_id,
        trait_id: @character_race_trait.trait_id
      }
    end

    assert_response 201
  end

  test "should show character_race_trait" do
    get :show, id: @character_race_trait
    assert_response :success
  end

  test "should update character_race_trait" do
    put :update, id: @character_race_trait, character_race_trait: {
      character_race_id: @character_race_trait.character_race_id,
      trait_id: @character_race_trait.trait_id
    }
    assert_response 204
  end

  test "should destroy character_race_trait" do
    assert_difference('CharacterRaceTrait.count', -1) do
      delete :destroy, id: @character_race_trait
    end

    assert_response 204
  end
end
