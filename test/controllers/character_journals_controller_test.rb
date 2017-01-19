require 'test_helper'

class CharacterJournalsControllerTest < ActionController::TestCase
  setup do
    @character_journal = character_journals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_journals)
  end

  test "should create character_journal" do
    assert_difference('CharacterJournal.count') do
      post :create, character_journal: { alignment_id: @character_journal.alignment_id, character_sheet_id: @character_journal.character_sheet_id, current_exp: @character_journal.current_exp, current_level: @character_journal.current_level, idactive: @character_journal.idactive, inc_date: @character_journal.inc_date }
    end

    assert_response 201
  end

  test "should show character_journal" do
    get :show, id: @character_journal
    assert_response :success
  end

  test "should update character_journal" do
    put :update, id: @character_journal, character_journal: { alignment_id: @character_journal.alignment_id, character_sheet_id: @character_journal.character_sheet_id, current_exp: @character_journal.current_exp, current_level: @character_journal.current_level, idactive: @character_journal.idactive, inc_date: @character_journal.inc_date }
    assert_response 204
  end

  test "should destroy character_journal" do
    assert_difference('CharacterJournal.count', -1) do
      delete :destroy, id: @character_journal
    end

    assert_response 204
  end
end
