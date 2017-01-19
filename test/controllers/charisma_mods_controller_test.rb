require 'test_helper'

class CharismaModsControllerTest < ActionController::TestCase
  setup do
    @charisma_mod = charisma_mods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:charisma_mods)
  end

  test "should create charisma_mod" do
    assert_difference('CharismaMod.count') do
      post :create, charisma_mod: { followers_mod: @charisma_mod.followers_mod, reaction_mod: @charisma_mod.reaction_mod, undead_mod: @charisma_mod.undead_mod, value: @charisma_mod.value }
    end

    assert_response 201
  end

  test "should show charisma_mod" do
    get :show, id: @charisma_mod
    assert_response :success
  end

  test "should update charisma_mod" do
    put :update, id: @charisma_mod, charisma_mod: { followers_mod: @charisma_mod.followers_mod, reaction_mod: @charisma_mod.reaction_mod, undead_mod: @charisma_mod.undead_mod, value: @charisma_mod.value }
    assert_response 204
  end

  test "should destroy charisma_mod" do
    assert_difference('CharismaMod.count', -1) do
      delete :destroy, id: @charisma_mod
    end

    assert_response 204
  end
end
