class API::V1::CampainJournalsController < ApplicationController
  before_action :set_campain_journal, only: [:show, :update, :destroy]

  # GET /api/v1/campain_journals
  # GET /api/v1/campain_journals.json
  def index
    @campain_journals = CampainJournal.all

    render json: @campain_journals
  end

  # GET /api/v1/campain_journals/1
  # GET /api/v1/campain_journals/1.json
  def show
    render json: @campain_journal
  end

  # POST /api/v1/campain_journals
  # POST /api/v1/campain_journals.json
  def create
    @campain_journal = CampainJournal.new(campain_journal_params)

    if @campain_journal.save
      render json: @campain_journal, status: :created, location: @campain_journal
    else
      render json: @campain_journal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/campain_journals/1
  # PATCH/PUT /api/v1/campain_journals/1.json
  def update
    @campain_journal = CampainJournal.find(params[:id])

    if @campain_journal.update(campain_journal_params)
      head :no_content
    else
      render json: @campain_journal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/campain_journals/1
  # DELETE /api/v1/campain_journals/1.json
  def destroy
    @campain_journal.destroy

    head :no_content
  end

  private

    def set_campain_journal
      @campain_journal = CampainJournal.find(params[:id])
    end

    def campain_journal_params
      params.require(:campain_journal).permit(:description, :idactive, :log_date, :campain_id)
    end
end
