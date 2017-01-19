class API::V1::CharacterJournalsController < ApplicationController
  before_action :set_character_journal, only: [:show, :update, :destroy]

  # GET /api/v1/character_journals
  # GET /api/v1/character_journals.json
  def index
    @character_journals = CharacterJournal.all

    render json: @character_journals
  end

  # GET /api/v1/character_journals/1
  # GET /api/v1/character_journals/1.json
  def show
    render json: @character_journal
  end

  # POST /api/v1/character_journals
  # POST /api/v1/character_journals.json
  def create
    @character_journal = CharacterJournal.new(character_journal_params)

    if @character_journal.save
      render json: @character_journal, status: :created, location: @character_journal
    else
      render json: @character_journal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/character_journals/1
  # PATCH/PUT /api/v1/character_journals/1.json
  def update
    @character_journal = CharacterJournal.find(params[:id])

    if @character_journal.update(character_journal_params)
      head :no_content
    else
      render json: @character_journal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/character_journals/1
  # DELETE /api/v1/character_journals/1.json
  def destroy
    @character_journal.destroy

    head :no_content
  end

  private

    def set_character_journal
      @character_journal = CharacterJournal.find(params[:id])
    end

    def character_journal_params
      params.require(:character_journal).permit(:current_level, :current_exp, :idactive, :inc_date, :character_sheet_id, :alignment_id)
    end
end
