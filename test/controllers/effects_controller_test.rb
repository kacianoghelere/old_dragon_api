require 'test_helper'

class EffectsControllerTest < ActionController::TestCase
  setup do
    @effect = effects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:effects)
  end

  test "should create effect" do
    assert_difference('Effect.count') do
      post :create, effect: { description: @effect.description, effect_type_id: @effect.effect_type_id, name: @effect.name, user_id: @effect.user_id }
    end

    assert_response 201
  end

  test "should show effect" do
    get :show, id: @effect
    assert_response :success
  end

  test "should update effect" do
    put :update, id: @effect, effect: { description: @effect.description, effect_type_id: @effect.effect_type_id, name: @effect.name, user_id: @effect.user_id }
    assert_response 204
  end

  test "should destroy effect" do
    assert_difference('Effect.count', -1) do
      delete :destroy, id: @effect
    end

    assert_response 204
  end
end
