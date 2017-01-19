class CharacterRaceSkillsController < ApplicationController
  before_action :set_character_race_skill, only: [:show, :update, :destroy]

  # GET /character_race_skills
  # GET /character_race_skills.json
  def index
    @character_race_skills = CharacterRaceSkill.all

    render json: @character_race_skills
  end

  # GET /character_race_skills/1
  # GET /character_race_skills/1.json
  def show
    render json: @character_race_skill
  end

  # POST /character_race_skills
  # POST /character_race_skills.json
  def create
    @character_race_skill = CharacterRaceSkill.new(character_race_skill_params)

    if @character_race_skill.save
      render json: @character_race_skill, status: :created, location: @character_race_skill
    else
      render json: @character_race_skill.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /character_race_skills/1
  # PATCH/PUT /character_race_skills/1.json
  def update
    @character_race_skill = CharacterRaceSkill.find(params[:id])

    if @character_race_skill.update(character_race_skill_params)
      head :no_content
    else
      render json: @character_race_skill.errors, status: :unprocessable_entity
    end
  end

  # DELETE /character_race_skills/1
  # DELETE /character_race_skills/1.json
  def destroy
    @character_race_skill.destroy

    head :no_content
  end

  private

    def set_character_race_skill
      @character_race_skill = CharacterRaceSkill.find(params[:id])
    end

    def character_race_skill_params
      params.require(:character_race_skill).permit(:character_race_id, :skill_id)
    end
end
