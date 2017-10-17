require 'test_helper'

class PageCategoriesControllerTest < ActionController::TestCase
  setup do
    @page_category = page_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:page_categories)
  end

  test "should create page_category" do
    assert_difference('PageCategory.count') do
      post :create, page_category: {  }
    end

    assert_response 201
  end

  test "should show page_category" do
    get :show, id: @page_category
    assert_response :success
  end

  test "should update page_category" do
    put :update, id: @page_category, page_category: {  }
    assert_response 204
  end

  test "should destroy page_category" do
    assert_difference('PageCategory.count', -1) do
      delete :destroy, id: @page_category
    end

    assert_response 204
  end
end
