class API::V1::SkillsController < ApplicationController
  before_action :set_skill, only: [:show, :update, :destroy]

  # GET /api/v1/skills
  # GET /api/v1/skills.json
  def index
    @skills = Skill.all

    render json: @skills
  end

  # GET /api/v1/skills/1
  # GET /api/v1/skills/1.json
  def show
    render json: @skill
  end

  # POST /api/v1/skills
  # POST /api/v1/skills.json
  def create
    @skill = Skill.new(skill_params)

    if @skill.save
      render json: @skill, status: :created, location: @skill
    else
      render json: @skill.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/skills/1
  # PATCH/PUT /api/v1/skills/1.json
  def update
    @skill = Skill.find(params[:id])

    if @skill.update(skill_params)
      head :no_content
    else
      render json: @skill.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/skills/1
  # DELETE /api/v1/skills/1.json
  def destroy
    @skill.destroy

    head :no_content
  end

  private

    def set_skill
      @skill = Skill.find(params[:id])
    end

    def skill_params
      params.require(:skill).permit(:name, :description, :effect_id, :skill_type_id, :user_id)
    end
end
