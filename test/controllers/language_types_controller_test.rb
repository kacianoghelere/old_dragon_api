require 'test_helper'

class LanguageTypesControllerTest < ActionController::TestCase
  setup do
    @language_type = language_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:language_types)
  end

  test "should create language_type" do
    assert_difference('LanguageType.count') do
      post :create, language_type: { description: @language_type.description, name: @language_type.name }
    end

    assert_response 201
  end

  test "should show language_type" do
    get :show, id: @language_type
    assert_response :success
  end

  test "should update language_type" do
    put :update, id: @language_type, language_type: { description: @language_type.description, name: @language_type.name }
    assert_response 204
  end

  test "should destroy language_type" do
    assert_difference('LanguageType.count', -1) do
      delete :destroy, id: @language_type
    end

    assert_response 204
  end
end
