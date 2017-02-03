require 'test_helper'

class CharacterClassSpecializationsControllerTest < ActionController::TestCase
  setup do
    @character_class_specialization = character_class_specializations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_class_specializations)
  end

  test "should create character_class_specialization" do
    assert_difference('CharacterClassSpecialization.count') do
      post :create, character_class_specialization: { alignment_id: @character_class_specialization.alignment_id, character_class_id: @character_class_specialization.character_class_id, description: @character_class_specialization.description, min_level: @character_class_specialization.min_level, name: @character_class_specialization.name }
    end

    assert_response 201
  end

  test "should show character_class_specialization" do
    get :show, id: @character_class_specialization
    assert_response :success
  end

  test "should update character_class_specialization" do
    put :update, id: @character_class_specialization, character_class_specialization: { alignment_id: @character_class_specialization.alignment_id, character_class_id: @character_class_specialization.character_class_id, description: @character_class_specialization.description, min_level: @character_class_specialization.min_level, name: @character_class_specialization.name }
    assert_response 204
  end

  test "should destroy character_class_specialization" do
    assert_difference('CharacterClassSpecialization.count', -1) do
      delete :destroy, id: @character_class_specialization
    end

    assert_response 204
  end
end
