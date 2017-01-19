require 'test_helper'

class PerksControllerTest < ActionController::TestCase
  setup do
    @perk = perks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:perks)
  end

  test "should create perk" do
    assert_difference('Perk.count') do
      post :create, perk: { description: @perk.description, name: @perk.name, perk_type_id: @perk.perk_type_id, user_id: @perk.user_id }
    end

    assert_response 201
  end

  test "should show perk" do
    get :show, id: @perk
    assert_response :success
  end

  test "should update perk" do
    put :update, id: @perk, perk: { description: @perk.description, name: @perk.name, perk_type_id: @perk.perk_type_id, user_id: @perk.user_id }
    assert_response 204
  end

  test "should destroy perk" do
    assert_difference('Perk.count', -1) do
      delete :destroy, id: @perk
    end

    assert_response 204
  end
end
