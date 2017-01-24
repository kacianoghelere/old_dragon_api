class API::V1::SkillTypesController < ApplicationController
  before_filter :authenticate_request!
  before_filter :check_admin, only: [:create, :update, :destroy]
  before_action :set_skill_type, only: [:show, :update, :destroy]

  # GET /skill_types
  # GET /skill_types.json
  def index
    @skill_types = SkillType.all

    render json: @skill_types
  end

  # GET /skill_types/1
  # GET /skill_types/1.json
  def show
    render json: @skill_type
  end

  # POST /skill_types
  # POST /skill_types.json
  def create
    @skill_type = SkillType.new(skill_type_params)

    if @skill_type.save
      render json: @skill_type, status: :created, location: @skill_type
    else
      render json: @skill_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /skill_types/1
  # PATCH/PUT /skill_types/1.json
  def update
    @skill_type = SkillType.find(params[:id])

    if @skill_type.update(skill_type_params)
      head :no_content
    else
      render json: @skill_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /skill_types/1
  # DELETE /skill_types/1.json
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
