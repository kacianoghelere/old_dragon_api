class API::V1::CharacterRaceWeaponsController < ApplicationController
  before_filter :authenticate_request!
  before_action :set_character_race_weapon, only: [:show, :update, :destroy]

  # GET /character_race_weapons
  # GET /character_race_weapons.json
  def index
    @character_race_weapons = CharacterRaceWeapon.all

    render json: @character_race_weapons
  end

  # GET /character_race_weapons/1
  # GET /character_race_weapons/1.json
  def show
    render json: @character_race_weapon
  end

  # POST /character_race_weapons
  # POST /character_race_weapons.json
  def create
    @character_race_weapon = CharacterRaceWeapon.new(character_race_weapon_params)

    if @character_race_weapon.save
      render json: @character_race_weapon, status: :created, location: @character_race_weapon
    else
      render json: @character_race_weapon.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /character_race_weapons/1
  # PATCH/PUT /character_race_weapons/1.json
  def update
    @character_race_weapon = CharacterRaceWeapon.find(params[:id])

    if @character_race_weapon.update(character_race_weapon_params)
      head :no_content
    else
      render json: @character_race_weapon.errors, status: :unprocessable_entity
    end
  end

  # DELETE /character_race_weapons/1
  # DELETE /character_race_weapons/1.json
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
