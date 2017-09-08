require 'test_helper'

class TraitTypesControllerTest < ActionController::TestCase
  setup do
    @trait_type = trait_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trait_types)
  end

  test "should create trait_type" do
    assert_difference('TraitType.count') do
      post :create, trait_type: { name: @trait_type.name }
    end

    assert_response 201
  end

  test "should show trait_type" do
    get :show, id: @trait_type
    assert_response :success
  end

  test "should update trait_type" do
    put :update, id: @trait_type, trait_type: { name: @trait_type.name }
    assert_response 204
  end

  test "should destroy trait_type" do
    assert_difference('TraitType.count', -1) do
      delete :destroy, id: @trait_type
    end

    assert_response 204
  end
end
