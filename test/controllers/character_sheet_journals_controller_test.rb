require 'test_helper'

class CharacterSheetJournalsControllerTest < ActionController::TestCase
  setup do
    @character_sheet_journal = character_sheet_journals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:character_sheet_journals)
  end

  test "should create character_sheet_journal" do
    assert_difference('CharacterSheetJournal.count') do
      post :create, character_sheet_journal: { alignment_id: @character_sheet_journal.alignment_id, character_sheet_id: @character_sheet_journal.character_sheet_id, current_exp: @character_sheet_journal.current_exp, current_level: @character_sheet_journal.current_level, idactive: @character_sheet_journal.idactive, inc_date: @character_sheet_journal.inc_date }
    end

    assert_response 201
  end

  test "should show character_sheet_journal" do
    get :show, id: @character_sheet_journal
    assert_response :success
  end

  test "should update character_sheet_journal" do
    put :update, id: @character_sheet_journal, character_sheet_journal: { alignment_id: @character_sheet_journal.alignment_id, character_sheet_id: @character_sheet_journal.character_sheet_id, current_exp: @character_sheet_journal.current_exp, current_level: @character_sheet_journal.current_level, idactive: @character_sheet_journal.idactive, inc_date: @character_sheet_journal.inc_date }
    assert_response 204
  end

  test "should destroy character_sheet_journal" do
    assert_difference('CharacterSheetJournal.count', -1) do
      delete :destroy, id: @character_sheet_journal
    end

    assert_response 204
  end
end
