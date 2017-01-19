require 'test_helper'

class CharacterRaceSkillsControllerTest < ActionController::TestCase
  setup do
    @character_race_skill = character_race_skills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_race_skills)
  end

  test "should create character_race_skill" do
    assert_difference('CharacterRaceSkill.count') do
      post :create, character_race_skill: { character_race_id: @character_race_skill.character_race_id, skill_id: @character_race_skill.skill_id }
    end

    assert_response 201
  end

  test "should show character_race_skill" do
    get :show, id: @character_race_skill
    assert_response :success
  end

  test "should update character_race_skill" do
    put :update, id: @character_race_skill, character_race_skill: { character_race_id: @character_race_skill.character_race_id, skill_id: @character_race_skill.skill_id }
    assert_response 204
  end

  test "should destroy character_race_skill" do
    assert_difference('CharacterRaceSkill.count', -1) do
      delete :destroy, id: @character_race_skill
    end

    assert_response 204
  end
end
