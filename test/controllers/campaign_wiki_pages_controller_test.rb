require 'test_helper'

class CampaignWikiPagesControllerTest < ActionController::TestCase
  setup do
    @campaign_wiki_page = campaign_wiki_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:campaign_wiki_pages)
  end

  test "should create campaign_wiki_page" do
    assert_difference('CampaignWikiPage.count') do
      post :create, campaign_wiki_page: { body: @campaign_wiki_page.body, campaign_id: @campaign_wiki_page.campaign_id, title: @campaign_wiki_page.title }
    end

    assert_response 201
  end

  test "should show campaign_wiki_page" do
    get :show, id: @campaign_wiki_page
    assert_response :success
  end

  test "should update campaign_wiki_page" do
    put :update, id: @campaign_wiki_page, campaign_wiki_page: { body: @campaign_wiki_page.body, campaign_id: @campaign_wiki_page.campaign_id, title: @campaign_wiki_page.title }
    assert_response 204
  end

  test "should destroy campaign_wiki_page" do
    assert_difference('CampaignWikiPage.count', -1) do
      delete :destroy, id: @campaign_wiki_page
    end

    assert_response 204
  end
end
