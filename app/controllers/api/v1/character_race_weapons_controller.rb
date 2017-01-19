class API::V1::CharacterRaceWeaponsController < ApplicationController
  before_action :set_character_race_weapon, only: [:show, :update, :destroy]

  # GET /api/v1/character_race_weapons
  # GET /api/v1/character_race_weapons.json
  def index
    @character_race_weapons = CharacterRaceWeapon.all

    render json: @character_race_weapons
  end

  # GET /api/v1/character_race_weapons/1
  # GET /api/v1/character_race_weapons/1.json
  def show
    render json: @character_race_weapon
  end

  # POST /api/v1/character_race_weapons
  # POST /api/v1/character_race_weapons.json
  def create
    @character_race_weapon = CharacterRaceWeapon.new(character_race_weapon_params)

    if @character_race_weapon.save
      render json: @character_race_weapon, status: :created, location: @character_race_weapon
    else
      render json: @character_race_weapon.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/character_race_weapons/1
  # PATCH/PUT /api/v1/character_race_weapons/1.json
  def update
    @character_race_weapon = CharacterRaceWeapon.find(params[:id])

    if @character_race_weapon.update(character_race_weapon_params)
      head :no_content
    else
      render json: @character_race_weapon.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/character_race_weapons/1
  # DELETE /api/v1/character_race_weapons/1.json
  def destroy
    @character_race_weapon.destroy

    head :no_content
  end

  private

    def set_character_race_weapon
      @character_race_weapon = CharacterRaceWeapon.find(params[:id])
    end

    def character_race_weapon_params
      params.require(:character_race_weapon).permit(:character_race_id, :weapon_type_id)
    end
end
