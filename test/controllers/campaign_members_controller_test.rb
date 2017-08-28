require 'test_helper'

class CampaignMembersControllerTest < ActionController::TestCase
  setup do
    @campaign_member = campaign_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:campaign_members)
  end

  test "should create campaign_member" do
    assert_difference('CampaignMember.count') do
      post :create, campaign_member: {
        campaign_id: @campaign_member.campaign_id,
        character_id: @campaign_member.character_id,
        idactive: @campaign_member.idactive
      }
    end

    assert_response 201
  end

  test "should show campaign_member" do
    get :show, id: @campaign_member
    assert_response :success
  end

  test "should update campaign_member" do
    put :update, id: @campaign_member, campaign_member: {
      campaign_id: @campaign_member.campaign_id,
      character_id: @campaign_member.character_id,
      idactive: @campaign_member.idactive
    }
    assert_response 204
  end

  test "should destroy campaign_member" do
    assert_difference('CampaignMember.count', -1) do
      delete :destroy, id: @campaign_member
    end

    assert_response 204
  end
end
