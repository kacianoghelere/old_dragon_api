class API::V1::CharacterRacePerksController < ApplicationController
  before_action :set_character_race_perk, only: [:show, :update, :destroy]

  # GET /api/v1/character_race_perks
  # GET /api/v1/character_race_perks.json
  def index
    @character_race_perks = CharacterRacePerk.all

    render json: @character_race_perks
  end

  # GET /api/v1/character_race_perks/1
  # GET /api/v1/character_race_perks/1.json
  def show
    render json: @character_race_perk
  end

  # POST /api/v1/character_race_perks
  # POST /api/v1/character_race_perks.json
  def create
    @character_race_perk = CharacterRacePerk.new(character_race_perk_params)

    if @character_race_perk.save
      render json: @character_race_perk, status: :created, location: @character_race_perk
    else
      render json: @character_race_perk.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/character_race_perks/1
  # PATCH/PUT /api/v1/character_race_perks/1.json
  def update
    @character_race_perk = CharacterRacePerk.find(params[:id])

    if @character_race_perk.update(character_race_perk_params)
      head :no_content
    else
      render json: @character_race_perk.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/character_race_perks/1
  # DELETE /api/v1/character_race_perks/1.json
  def destroy
    @character_race_perk.destroy

    head :no_content
  end

  private

    def set_character_race_perk
      @character_race_perk = CharacterRacePerk.find(params[:id])
    end

    def character_race_perk_params
      params.require(:character_race_perk).permit(:character_race_id, :perk_id)
    end
end
