require 'test_helper'

class CharacterSpecializationsControllerTest < ActionController::TestCase
  setup do
    @character_specialization = character_specializations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_specializations)
  end

  test "should create character_specialization" do
    assert_difference('CharacterSpecialization.count') do
      post :create, character_specialization: {  }
    end

    assert_response 201
  end

  test "should show character_specialization" do
    get :show, id: @character_specialization
    assert_response :success
  end

  test "should update character_specialization" do
    put :update, id: @character_specialization, character_specialization: {  }
    assert_response 204
  end

  test "should destroy character_specialization" do
    assert_difference('CharacterSpecialization.count', -1) do
      delete :destroy, id: @character_specialization
    end

    assert_response 204
  end
end
