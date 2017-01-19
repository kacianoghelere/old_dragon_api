class API::V1::SkillTypesController < ApplicationController
  before_action :set_skill_type, only: [:show, :update, :destroy]

  # GET /api/v1/skill_types
  # GET /api/v1/skill_types.json
  def index
    @skill_types = SkillType.all

    render json: @skill_types
  end

  # GET /api/v1/skill_types/1
  # GET /api/v1/skill_types/1.json
  def show
    render json: @skill_type
  end

  # POST /api/v1/skill_types
  # POST /api/v1/skill_types.json
  def create
    @skill_type = SkillType.new(skill_type_params)

    if @skill_type.save
      render json: @skill_type, status: :created, location: @skill_type
    else
      render json: @skill_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/skill_types/1
  # PATCH/PUT /api/v1/skill_types/1.json
  def update
    @skill_type = SkillType.find(params[:id])

    if @skill_type.update(skill_type_params)
      head :no_content
    else
      render json: @skill_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/skill_types/1
  # DELETE /api/v1/skill_types/1.json
  def destroy
    @skill_type.destroy

    head :no_content
  end

  private

    def set_skill_type
      @skill_type = SkillType.find(params[:id])
    end

    def skill_type_params
      params.require(:skill_type).permit(:name)
    end
end
