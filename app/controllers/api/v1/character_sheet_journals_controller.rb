class API::V1::CharacterSheetJournalsController < ApplicationController
  before_filter :authenticate_request!
  before_action :set_character_sheet_journal, only: [:show, :update, :destroy]

  # GET /character_sheet_journals
  # GET /character_sheet_journals.json
  def index
    @character_sheet_journals = CharacterSheetJournal.all

    render json: @character_sheet_journals
  end

  # GET /character_sheet_journals/1
  # GET /character_sheet_journals/1.json
  def show
    render json: @character_sheet_journal
  end

  # POST /character_sheet_journals
  # POST /character_sheet_journals.json
  def create
    @character_sheet_journal = CharacterSheetJournal.new(character_sheet_journal_params)

    if @character_sheet_journal.save
      render json: @character_sheet_journal, status: :created, location: @character_sheet_journal
    else
      render json: @character_sheet_journal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /character_sheet_journals/1
  # PATCH/PUT /character_sheet_journals/1.json
  def update
    @character_sheet_journal = CharacterSheetJournal.find(params[:id])

    if @character_sheet_journal.update(character_sheet_journal_params)
      head :no_content
    else
      render json: @character_sheet_journal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /character_sheet_journals/1
  # DELETE /character_sheet_journals/1.json
  def destroy
    @character_sheet_journal.destroy

    head :no_content
  end

  private

    def set_character_sheet_journal
      @character_sheet_journal = CharacterSheetJournal.find(params[:id])
    end

    def character_sheet_journal_params
      params.require(:character_sheet_journal).permit(:current_level, :current_exp, :idactive, :inc_date, :character_sheet_id, :alignment_id)
    end
end
