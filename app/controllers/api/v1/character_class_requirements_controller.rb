class API::V1::CharacterClassRequirementsController < ApplicationController
  before_filter :authenticate_request!
  before_action :set_character_class_requirement, only: [:show, :update, :destroy]

  # GET /character_class_requirements
  # GET /character_class_requirements.json
  def index
    @character_class_requirements = CharacterClassRequirement.all

    render json: @character_class_requirements
  end

  # GET /character_class_requirements/1
  # GET /character_class_requirements/1.json
  def show
    render json: @character_class_requirement
  end

  # POST /character_class_requirements
  # POST /character_class_requirements.json
  def create
    @character_class_requirement = CharacterClassRequirement.new(character_class_requirement_params)

    if @character_class_requirement.save
      render json: @character_class_requirement, status: :created, location: @character_class_requirement
    else
      render json: @character_class_requirement.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /character_class_requirements/1
  # PATCH/PUT /character_class_requirements/1.json
  def update
    @character_class_requirement = CharacterClassRequirement.find(params[:id])

    if @character_class_requirement.update(character_class_requirement_params)
      head :no_content
    else
      render json: @character_class_requirement.errors, status: :unprocessable_entity
    end
  end

  # DELETE /character_class_requirements/1
  # DELETE /character_class_requirements/1.json
  def destroy
    @character_class_requirement.destroy

    head :no_content
  end

  private

    def set_character_class_requirement
      @character_class_requirement = CharacterClassRequirement.find(params[:id])
    end

    def character_class_requirement_params
      params.require(:character_class_requirement).permit(:str_mod, :dex_mod, :cons_mod, :int_mod, :wis_mod, :char_mod, :character_classes_id)
    end
end
