require 'test_helper'

class WikiCategoriesControllerTest < ActionController::TestCase
  setup do
    @wiki_category = wiki_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wiki_categories)
  end

  test "should create wiki_category" do
    assert_difference('WikiCategory.count') do
      post :create, wiki_category: {  }
    end

    assert_response 201
  end

  test "should show wiki_category" do
    get :show, id: @wiki_category
    assert_response :success
  end

  test "should update wiki_category" do
    put :update, id: @wiki_category, wiki_category: {  }
    assert_response 204
  end

  test "should destroy wiki_category" do
    assert_difference('WikiCategory.count', -1) do
      delete :destroy, id: @wiki_category
    end

    assert_response 204
  end
end
