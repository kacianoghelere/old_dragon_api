require 'test_helper'

class ItemTypesControllerTest < ActionController::TestCase
  setup do
    @item_type = item_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_types)
  end

  test "should create item_type" do
    assert_difference('ItemType.count') do
      post :create, item_type: { name: @item_type.name }
    end

    assert_response 201
  end

  test "should show item_type" do
    get :show, id: @item_type
    assert_response :success
  end

  test "should update item_type" do
    put :update, id: @item_type, item_type: { name: @item_type.name }
    assert_response 204
  end

  test "should destroy item_type" do
    assert_difference('ItemType.count', -1) do
      delete :destroy, id: @item_type
    end

    assert_response 204
  end
end
