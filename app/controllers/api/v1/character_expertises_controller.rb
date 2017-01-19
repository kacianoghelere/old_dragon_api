class API::V1::CharacterExpertisesController < ApplicationController
  before_action :set_character_expertise, only: [:show, :update, :destroy]

  # GET /api/v1/character_expertises
  # GET /api/v1/character_expertises.json
  def index
    @character_expertises = CharacterExpertise.all

    render json: @character_expertises
  end

  # GET /api/v1/character_expertises/1
  # GET /api/v1/character_expertises/1.json
  def show
    render json: @character_expertise
  end

  # POST /api/v1/character_expertises
  # POST /api/v1/character_expertises.json
  def create
    @character_expertise = CharacterExpertise.new(character_expertise_params)

    if @character_expertise.save
      render json: @character_expertise, status: :created, location: @character_expertise
    else
      render json: @character_expertise.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/character_expertises/1
  # PATCH/PUT /api/v1/character_expertises/1.json
  def update
    @character_expertise = CharacterExpertise.find(params[:id])

    if @character_expertise.update(character_expertise_params)
      head :no_content
    else
      render json: @character_expertise.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/character_expertises/1
  # DELETE /api/v1/character_expertises/1.json
  def destroy
    @character_expertise.destroy

    head :no_content
  end

  private

    def set_character_expertise
      @character_expertise = CharacterExpertise.find(params[:id])
    end

    def character_expertise_params
      params.require(:character_expertise).permit(:character_sheet_id, :expertise_id)
    end
end
