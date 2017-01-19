require 'test_helper'

class AlignmentsControllerTest < ActionController::TestCase
  setup do
    @alignment = alignments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alignments)
  end

  test "should create alignment" do
    assert_difference('Alignment.count') do
      post :create, alignment: { name: @alignment.name }
    end

    assert_response 201
  end

  test "should show alignment" do
    get :show, id: @alignment
    assert_response :success
  end

  test "should update alignment" do
    put :update, id: @alignment, alignment: { name: @alignment.name }
    assert_response 204
  end

  test "should destroy alignment" do
    assert_difference('Alignment.count', -1) do
      delete :destroy, id: @alignment
    end

    assert_response 204
  end
end
