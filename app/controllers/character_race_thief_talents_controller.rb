class CharacterRaceThiefTalentsController < ApplicationController
  before_action :set_character_race_thief_talent, only: [:show, :update, :destroy]

  # GET /character_race_thief_talents
  # GET /character_race_thief_talents.json
  def index
    @character_race_thief_talents = CharacterRaceThiefTalent.all

    render json: @character_race_thief_talents
  end

  # GET /character_race_thief_talents/1
  # GET /character_race_thief_talents/1.json
  def show
    render json: @character_race_thief_talent
  end

  # POST /character_race_thief_talents
  # POST /character_race_thief_talents.json
  def create
    @character_race_thief_talent = CharacterRaceThiefTalent.new(character_race_thief_talent_params)

    if @character_race_thief_talent.save
      render json: @character_race_thief_talent, status: :created, location: @character_race_thief_talent
    else
      render json: @character_race_thief_talent.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /character_race_thief_talents/1
  # PATCH/PUT /character_race_thief_talents/1.json
  def update
    @character_race_thief_talent = CharacterRaceThiefTalent.find(params[:id])

    if @character_race_thief_talent.update(character_race_thief_talent_params)
      head :no_content
    else
      render json: @character_race_thief_talent.errors, status: :unprocessable_entity
    end
  end

  # DELETE /character_race_thief_talents/1
  # DELETE /character_race_thief_talents/1.json
  def destroy
    @character_race_thief_talent.destroy

    head :no_content
  end

  private

    def set_character_race_thief_talent
      @character_race_thief_talent = CharacterRaceThiefTalent.find(params[:id])
    end

    def character_race_thief_talent_params
      params.require(:character_race_thief_talent).permit(:id, :lockpick_mod, :find_traps_mod, :climb_mod, :silent_movement_mod, :stealth_mod, :pickpocket_mod, :hear_noises_mod, :backstab_mod, :character_race_id)
    end
end
