require 'test_helper'

class CharacterClassSpecializationStagesControllerTest < ActionController::TestCase
  setup do
    @character_class_specialization_stage = character_class_specialization_stages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_class_specialization_stages)
  end

  test "should create character_class_specialization_stage" do
    assert_difference('CharacterClassSpecializationStage.count') do
      post :create, character_class_specialization_stage: { character_class_specialization_id: @character_class_specialization_stage.character_class_specialization_id, description: @character_class_specialization_stage.description, min_level: @character_class_specialization_stage.min_level }
    end

    assert_response 201
  end

  test "should show character_class_specialization_stage" do
    get :show, id: @character_class_specialization_stage
    assert_response :success
  end

  test "should update character_class_specialization_stage" do
    put :update, id: @character_class_specialization_stage, character_class_specialization_stage: { character_class_specialization_id: @character_class_specialization_stage.character_class_specialization_id, description: @character_class_specialization_stage.description, min_level: @character_class_specialization_stage.min_level }
    assert_response 204
  end

  test "should destroy character_class_specialization_stage" do
    assert_difference('CharacterClassSpecializationStage.count', -1) do
      delete :destroy, id: @character_class_specialization_stage
    end

    assert_response 204
  end
end
