require 'test_helper'

class WisdomModsControllerTest < ActionController::TestCase
  setup do
    @wisdom_mod = wisdom_mods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wisdom_mods)
  end

  test "should create wisdom_mod" do
    assert_difference('WisdomMod.count') do
      post :create, wisdom_mod: { magic_cicle_1_mod: @wisdom_mod.magic_cicle_1_mod, magic_cicle_2_mod: @wisdom_mod.magic_cicle_2_mod, magic_cicle_3_mod: @wisdom_mod.magic_cicle_3_mod, protection_mod: @wisdom_mod.protection_mod, value: @wisdom_mod.value }
    end

    assert_response 201
  end

  test "should show wisdom_mod" do
    get :show, id: @wisdom_mod
    assert_response :success
  end

  test "should update wisdom_mod" do
    put :update, id: @wisdom_mod, wisdom_mod: { magic_cicle_1_mod: @wisdom_mod.magic_cicle_1_mod, magic_cicle_2_mod: @wisdom_mod.magic_cicle_2_mod, magic_cicle_3_mod: @wisdom_mod.magic_cicle_3_mod, protection_mod: @wisdom_mod.protection_mod, value: @wisdom_mod.value }
    assert_response 204
  end

  test "should destroy wisdom_mod" do
    assert_difference('WisdomMod.count', -1) do
      delete :destroy, id: @wisdom_mod
    end

    assert_response 204
  end
end
