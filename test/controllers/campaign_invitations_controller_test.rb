require 'test_helper'

class CampaignInvitationsControllerTest < ActionController::TestCase
  setup do
    @campaign_invitation = campaign_invitations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:campaign_invitations)
  end

  test "should create campaign_invitation" do
    assert_difference('CampaignInvitation.count') do
      post :create, campaign_invitation: { completed: @campaign_invitation.completed, campaign_id: @campaign_invitation.campaign_id, message: @campaign_invitation.message, user_id: @campaign_invitation.user_id }
    end

    assert_response 201
  end

  test "should show campaign_invitation" do
    get :show, id: @campaign_invitation
    assert_response :success
  end

  test "should update campaign_invitation" do
    put :update, id: @campaign_invitation, campaign_invitation: { completed: @campaign_invitation.completed, campaign_id: @campaign_invitation.campaign_id, message: @campaign_invitation.message, user_id: @campaign_invitation.user_id }
    assert_response 204
  end

  test "should destroy campaign_invitation" do
    assert_difference('CampaignInvitation.count', -1) do
      delete :destroy, id: @campaign_invitation
    end

    assert_response 204
  end
end
