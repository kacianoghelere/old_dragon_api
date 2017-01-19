require 'test_helper'

class ElementTypesControllerTest < ActionController::TestCase
  setup do
    @element_type = element_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:element_types)
  end

  test "should create element_type" do
    assert_difference('ElementType.count') do
      post :create, element_type: { name: @element_type.name }
    end

    assert_response 201
  end

  test "should show element_type" do
    get :show, id: @element_type
    assert_response :success
  end

  test "should update element_type" do
    put :update, id: @element_type, element_type: { name: @element_type.name }
    assert_response 204
  end

  test "should destroy element_type" do
    assert_difference('ElementType.count', -1) do
      delete :destroy, id: @element_type
    end

    assert_response 204
  end
end
