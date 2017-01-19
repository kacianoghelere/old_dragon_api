class CharacterExpertisesController < ApplicationController
  before_action :set_character_expertise, only: [:show, :update, :destroy]

  # GET /character_expertises
  # GET /character_expertises.json
  def index
    @character_expertises = CharacterExpertise.all

    render json: @character_expertises
  end

  # GET /character_expertises/1
  # GET /character_expertises/1.json
  def show
    render json: @character_expertise
  end

  # POST /character_expertises
  # POST /character_expertises.json
  def create
    @character_expertise = CharacterExpertise.new(character_expertise_params)

    if @character_expertise.save
      render json: @character_expertise, status: :created, location: @character_expertise
    else
      render json: @character_expertise.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /character_expertises/1
  # PATCH/PUT /character_expertises/1.json
  def update
    @character_expertise = CharacterExpertise.find(params[:id])

    if @character_expertise.update(character_expertise_params)
      head :no_content
    else
      render json: @character_expertise.errors, status: :unprocessable_entity
    end
  end

  # DELETE /character_expertises/1
  # DELETE /character_expertises/1.json
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
