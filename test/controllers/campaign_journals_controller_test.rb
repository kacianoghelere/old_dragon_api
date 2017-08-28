require 'test_helper'

class CampaignJournalsControllerTest < ActionController::TestCase
  setup do
    @campaign_journal = campaign_journals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:campaign_journals)
  end

  test "should create campaign_journal" do
    assert_difference('CampaignJournal.count') do
      post :create, campaign_journal: { campaign_id: @campaign_journal.campaign_id, description: @campaign_journal.description, idactive: @campaign_journal.idactive, log_date: @campaign_journal.log_date }
    end

    assert_response 201
  end

  test "should show campaign_journal" do
    get :show, id: @campaign_journal
    assert_response :success
  end

  test "should update campaign_journal" do
    put :update, id: @campaign_journal, campaign_journal: { campaign_id: @campaign_journal.campaign_id, description: @campaign_journal.description, idactive: @campaign_journal.idactive, log_date: @campaign_journal.log_date }
    assert_response 204
  end

  test "should destroy campaign_journal" do
    assert_difference('CampaignJournal.count', -1) do
      delete :destroy, id: @campaign_journal
    end

    assert_response 204
  end
end
