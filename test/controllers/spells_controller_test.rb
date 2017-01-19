require 'test_helper'

class SpellsControllerTest < ActionController::TestCase
  setup do
    @spell = spells(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spells)
  end

  test "should create spell" do
    assert_difference('Spell.count') do
      post :create, spell: { description: @spell.description, duration: @spell.duration, effect_id: @spell.effect_id, element_type_id: @spell.element_type_id, name: @spell.name, range: @spell.range, spell_circle_id: @spell.spell_circle_id, user_id: @spell.user_id }
    end

    assert_response 201
  end

  test "should show spell" do
    get :show, id: @spell
    assert_response :success
  end

  test "should update spell" do
    put :update, id: @spell, spell: { description: @spell.description, duration: @spell.duration, effect_id: @spell.effect_id, element_type_id: @spell.element_type_id, name: @spell.name, range: @spell.range, spell_circle_id: @spell.spell_circle_id, user_id: @spell.user_id }
    assert_response 204
  end

  test "should destroy spell" do
    assert_difference('Spell.count', -1) do
      delete :destroy, id: @spell
    end

    assert_response 204
  end
end
