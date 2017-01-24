class API::V1::CharacterSheetExpertisesController < ApplicationController
  before_filter :authenticate_request!
  before_action :set_character_sheet_expertise, only: [:show, :update, :destroy]

  # GET /character_sheet_expertises
  # GET /character_sheet_expertises.json
  def index
    @character_sheet_expertises = CharacterSheetExpertise.all

    render json: @character_sheet_expertises
  end

  # GET /character_sheet_expertises/1
  # GET /character_sheet_expertises/1.json
  def show
    render json: @character_sheet_expertise
  end

  # POST /character_sheet_expertises
  # POST /character_sheet_expertises.json
  def create
    @character_sheet_expertise = CharacterSheetExpertise.new(character_sheet_expertise_params)

    if @character_sheet_expertise.save
      render json: @character_sheet_expertise, status: :created, location: @character_sheet_expertise
    else
      render json: @character_sheet_expertise.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /character_sheet_expertises/1
  # PATCH/PUT /character_sheet_expertises/1.json
  def update
    @character_sheet_expertise = CharacterSheetExpertise.find(params[:id])

    if @character_sheet_expertise.update(character_sheet_expertise_params)
      head :no_content
    else
      render json: @character_sheet_expertise.errors, status: :unprocessable_entity
    end
  end

  # DELETE /character_sheet_expertises/1
  # DELETE /character_sheet_expertises/1.json
  def destroy
    @character_sheet_expertise.destroy

    head :no_content
  end

  private

    def set_character_sheet_expertise
      @character_sheet_expertise = CharacterSheetExpertise.find(params[:id])
    end

    def character_sheet_expertise_params
      params.require(:character_sheet_expertise).permit(:character_sheet_id, :expertise_id)
    end
end
