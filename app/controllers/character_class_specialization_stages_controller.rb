class CharacterClassSpecializationStagesController < ApplicationController
  before_action :set_character_class_specialization_stage, only: [:show, :update, :destroy]

  # GET /character_class_specialization_stages
  # GET /character_class_specialization_stages.json
  def index
    @character_class_specialization_stages = CharacterClassSpecializationStage.all

    render json: @character_class_specialization_stages
  end

  # GET /character_class_specialization_stages/1
  # GET /character_class_specialization_stages/1.json
  def show
    render json: @character_class_specialization_stage
  end

  # POST /character_class_specialization_stages
  # POST /character_class_specialization_stages.json
  def create
    @character_class_specialization_stage = CharacterClassSpecializationStage.new(character_class_specialization_stage_params)

    if @character_class_specialization_stage.save
      render json: @character_class_specialization_stage, status: :created, location: @character_class_specialization_stage
    else
      render json: @character_class_specialization_stage.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /character_class_specialization_stages/1
  # PATCH/PUT /character_class_specialization_stages/1.json
  def update
    @character_class_specialization_stage = CharacterClassSpecializationStage.find(params[:id])

    if @character_class_specialization_stage.update(character_class_specialization_stage_params)
      head :no_content
    else
      render json: @character_class_specialization_stage.errors, status: :unprocessable_entity
    end
  end

  # DELETE /character_class_specialization_stages/1
  # DELETE /character_class_specialization_stages/1.json
  def destroy
    @character_class_specialization_stage.destroy

    head :no_content
  end

  private

    def set_character_class_specialization_stage
      @character_class_specialization_stage = CharacterClassSpecializationStage.find(params[:id])
    end

    def character_class_specialization_stage_params
      params.require(:character_class_specialization_stage).permit(:description, :min_level, :character_class_specialization_id)
    end
end
