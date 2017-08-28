require 'test_helper'

class CampaignsControllerTest < ActionController::TestCase
  setup do
    @campaign = campaigns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:campaigns)
  end

  test "should create campaign" do
    assert_difference('Campaign.count') do
      post :create, campaign: { conclusion_date: @campaign.conclusion_date, description: @campaign.description, start_date: @campaign.start_date, title: @campaign.title, user_id: @campaign.user_id }
    end

    assert_response 201
  end

  test "should show campaign" do
    get :show, id: @campaign
    assert_response :success
  end

  test "should update campaign" do
    put :update, id: @campaign, campaign: { conclusion_date: @campaign.conclusion_date, description: @campaign.description, start_date: @campaign.start_date, title: @campaign.title, user_id: @campaign.user_id }
    assert_response 204
  end

  test "should destroy campaign" do
    assert_difference('Campaign.count', -1) do
      delete :destroy, id: @campaign
    end

    assert_response 204
  end
end
