require 'test_helper'

class CharacterExpertisesControllerTest < ActionController::TestCase
  setup do
    @character_expertise = character_expertises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_expertises)
  end

  test "should create character_expertise" do
    assert_difference('CharacterExpertise.count') do
      post :create, character_expertise: { character_sheet_id: @character_expertise.character_sheet_id, expertise_id: @character_expertise.expertise_id }
    end

    assert_response 201
  end

  test "should show character_expertise" do
    get :show, id: @character_expertise
    assert_response :success
  end

  test "should update character_expertise" do
    put :update, id: @character_expertise, character_expertise: { character_sheet_id: @character_expertise.character_sheet_id, expertise_id: @character_expertise.expertise_id }
    assert_response 204
  end

  test "should destroy character_expertise" do
    assert_difference('CharacterExpertise.count', -1) do
      delete :destroy, id: @character_expertise
    end

    assert_response 204
  end
end
