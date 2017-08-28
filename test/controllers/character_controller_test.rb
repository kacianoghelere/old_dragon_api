require 'test_helper'

class CharactersControllerTest < ActionController::TestCase
  setup do
    @character = characters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:characters)
  end

  test "should create character" do
    assert_difference('Character.count') do
      post :create, character: {
        age: @character.age,
        character_class_id: @character.character_class_id,
        character_race_id: @character.character_race_id,
        description: @character.description,
        height: @character.height,
        name: @character.name,
        user_id: @character.user_id,
        weight: @character.weight
      }
    end

    assert_response 201
  end

  test "should show character" do
    get :show, id: @character
    assert_response :success
  end

  test "should update character" do
    put :update, id: @character, character: {
      age: @character.age,
      character_class_id: @character.character_class_id,
      character_race_id: @character.character_race_id,
      description: @character.description,
      height: @character.height,
      name: @character.name,
      user_id: @character.user_id,
      weight: @character.weight
    }
    assert_response 204
  end

  test "should destroy character" do
    assert_difference('Character.count', -1) do
      delete :destroy, id: @character
    end

    assert_response 204
  end
end
