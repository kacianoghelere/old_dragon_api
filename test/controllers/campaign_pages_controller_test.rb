require 'test_helper'

class CampaignPagesControllerTest < ActionController::TestCase
  setup do
    @campaign_page = campaign_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:campaign_pages)
  end

  test "should create campaign_page" do
    assert_difference('CampaignPage.count') do
      post :create, campaign_page: {
        body: @campaign_page.body,
        campaign_id: @campaign_page.campaign_id,
        title: @campaign_page.title
      }
    end

    assert_response 201
  end

  test "should show campaign_page" do
    get :show, id: @campaign_page
    assert_response :success
  end

  test "should update campaign_page" do
    put :update, id: @campaign_page, campaign_page: {
      body: @campaign_page.body,
      campaign_id: @campaign_page.campaign_id,
      title: @campaign_page.title
    }
    assert_response 204
  end

  test "should destroy campaign_page" do
    assert_difference('CampaignPage.count', -1) do
      delete :destroy, id: @campaign_page
    end

    assert_response 204
  end
end
