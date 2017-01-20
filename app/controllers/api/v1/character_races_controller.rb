class API::V1::CharacterRacesController < ApplicationController
  before_action :set_character_race, only: [:show, :update, :destroy]

  # GET /character_races
  # GET /character_races.json
  def index
    @character_races = CharacterRace.all

    render json: @character_races
  end

  # GET /character_races/1
  # GET /character_races/1.json
  def show
    render json: @character_race
  end

  # POST /character_races
  # POST /character_races.json
  def create
    @character_race = CharacterRace.new(character_race_params)

    if @character_race.save
      render json: @character_race, status: :created, location: @character_race
    else
      render json: @character_race.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /character_races/1
  # PATCH/PUT /character_races/1.json
  def update
    @character_race = CharacterRace.find(params[:id])

    if @character_race.update(character_race_params)
      head :no_content
    else
      render json: @character_race.errors, status: :unprocessable_entity
    end
  end

  # DELETE /character_races/1
  # DELETE /character_races/1.json
  def destroy
    @character_race.destroy

    head :no_content
  end

  private

    def set_character_race
      @character_race = CharacterRace.find(params[:id])
    end

    def character_race_params
      params.require(:character_race).permit(:name, :min_height, :max_height, :min_weight, :max_weight, :maturity, :max_age, :movement_base, :armor_class_mod, :str_mod, :dex_mod, :cons_mod, :int_mod, :wis_mod, :char_mod, :alignment_id, :dice_id, :user_id)
    end
end
