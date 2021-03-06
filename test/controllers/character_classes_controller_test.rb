require 'test_helper'

class CharacterClassesControllerTest < ActionController::TestCase
  setup do
    @character_class = character_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_classes)
  end

  test "should create character_class" do
    assert_difference('CharacterClass.count') do
      post :create, character_class: {
        character_class_type_id: @character_class.character_class_type_id,
        description: @character_class.description,
        dice_id: @character_class.dice_id,
        name: @character_class.name,
        user_id: @character_class.user_id
      }
    end

    assert_response 201
  end

  test "should show character_class" do
    get :show, id: @character_class
    assert_response :success
  end

  test "should update character_class" do
    put :update, id: @character_class, character_class: {
      character_class_type_id: @character_class.character_class_type_id,
      description: @character_class.description,
      dice_id: @character_class.dice_id,
      name: @character_class.name,
      user_id: @character_class.user_id
    }
    assert_response 204
  end

  test "should destroy character_class" do
    assert_difference('CharacterClass.count', -1) do
      delete :destroy, id: @character_class
    end

    assert_response 204
  end
end
