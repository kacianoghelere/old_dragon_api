require 'test_helper'

class ThiefTalentsControllerTest < ActionController::TestCase
  setup do
    @thief_talent = thief_talents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thief_talents)
  end

  test "should create thief_talent" do
    assert_difference('ThiefTalent.count') do
      post :create, thief_talent: { backstab: @thief_talent.backstab, climb: @thief_talent.climb, find_traps: @thief_talent.find_traps, hear_noises: @thief_talent.hear_noises, level: @thief_talent.level, lockpick: @thief_talent.lockpick, pickpocket: @thief_talent.pickpocket, silent_movement: @thief_talent.silent_movement, stealth: @thief_talent.stealth }
    end

    assert_response 201
  end

  test "should show thief_talent" do
    get :show, id: @thief_talent
    assert_response :success
  end

  test "should update thief_talent" do
    put :update, id: @thief_talent, thief_talent: { backstab: @thief_talent.backstab, climb: @thief_talent.climb, find_traps: @thief_talent.find_traps, hear_noises: @thief_talent.hear_noises, level: @thief_talent.level, lockpick: @thief_talent.lockpick, pickpocket: @thief_talent.pickpocket, silent_movement: @thief_talent.silent_movement, stealth: @thief_talent.stealth }
    assert_response 204
  end

  test "should destroy thief_talent" do
    assert_difference('ThiefTalent.count', -1) do
      delete :destroy, id: @thief_talent
    end

    assert_response 204
  end
end
