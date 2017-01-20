require 'test_helper'

class CharacterSheetExpertisesControllerTest < ActionController::TestCase
  setup do
    @character_sheet_expertise = character_sheet_expertises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_sheet_expertises)
  end

  test "should create character_sheet_expertise" do
    assert_difference('CharacterSheetExpertise.count') do
      post :create, character_sheet_expertise: { character_sheet_id: @character_sheet_expertise.character_sheet_id, expertise_id: @character_sheet_expertise.expertise_id }
    end

    assert_response 201
  end

  test "should show character_sheet_expertise" do
    get :show, id: @character_sheet_expertise
    assert_response :success
  end

  test "should update character_sheet_expertise" do
    put :update, id: @character_sheet_expertise, character_sheet_expertise: { character_sheet_id: @character_sheet_expertise.character_sheet_id, expertise_id: @character_sheet_expertise.expertise_id }
    assert_response 204
  end

  test "should destroy character_sheet_expertise" do
    assert_difference('CharacterSheetExpertise.count', -1) do
      delete :destroy, id: @character_sheet_expertise
    end

    assert_response 204
  end
end
