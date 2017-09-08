require 'test_helper'

class TraitsControllerTest < ActionController::TestCase
  setup do
    @trait = traits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:traits)
  end

  test "should create trait" do
    assert_difference('Trait.count') do
      post :create, trait: { description: @trait.description, name: @trait.name, trait_type_id: @trait.trait_type_id, user_id: @trait.user_id }
    end

    assert_response 201
  end

  test "should show trait" do
    get :show, id: @trait
    assert_response :success
  end

  test "should update trait" do
    put :update, id: @trait, trait: { description: @trait.description, name: @trait.name, trait_type_id: @trait.trait_type_id, user_id: @trait.user_id }
    assert_response 204
  end

  test "should destroy trait" do
    assert_difference('Trait.count', -1) do
      delete :destroy, id: @trait
    end

    assert_response 204
  end
end
