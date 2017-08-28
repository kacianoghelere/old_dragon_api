require 'test_helper'

class CharacterAttributesControllerTest < ActionController::TestCase
  setup do
    @character_attribute = character_attributes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_attributes)
  end

  test "should create character_attribute" do
    assert_difference('CharacterAttribute.count') do
      post :create, character_attribute: {
        character_id: @character_attribute.character_id,
        constitution: @character_attribute.constitution,
        dexterity: @character_attribute.dexterity,
        intelligence: @character_attribute.intelligence,
        strength: @character_attribute.strength,
        wisdom: @character_attribute.wisdom
      }
    end

    assert_response 201
  end

  test "should show character_attribute" do
    get :show, id: @character_attribute
    assert_response :success
  end

  test "should update character_attribute" do
    put :update, id: @character_attribute, character_attribute: { 
      character_id: @character_attribute.character_id, 
      constitution: @character_attribute.constitution, 
      dexterity: @character_attribute.dexterity, 
      intelligence: @character_attribute.intelligence, 
      strength: @character_attribute.strength, 
      wisdom: @character_attribute.wisdom
    }
    assert_response 204
  end

  test "should destroy character_attribute" do
    assert_difference('CharacterAttribute.count', -1) do
      delete :destroy, id: @character_attribute
    end

    assert_response 204
  end
end
