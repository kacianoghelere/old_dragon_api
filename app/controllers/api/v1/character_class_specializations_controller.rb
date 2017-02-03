class API::V1::CharacterClassSpecializationsController < ApplicationController
  before_filter :authenticate_request!
  before_filter :check_admin,   only: [:destroy]
  before_action :set_character_class_specialization, only: [:show, :update, :destroy]

  # GET /character_class_specializations
  # GET /character_class_specializations.json
  def index
    @character_class_specializations = CharacterClassSpecialization.all

    render json: @character_class_specializations
  end

  # GET /character_class_specializations/1
  # GET /character_class_specializations/1.json
  def show
    render json: @character_class_specialization
  end

  # POST /character_class_specializations
  # POST /character_class_specializations.json
  def create
    @character_class_specialization = CharacterClassSpecialization.new(character_class_specialization_params)

    if @character_class_specialization.save
      render json: @character_class_specialization, status: :created, location: @character_class_specialization
    else
      render json: @character_class_specialization.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /character_class_specializations/1
  # PATCH/PUT /character_class_specializations/1.json
  def update
    @character_class_specialization = CharacterClassSpecialization.find(params[:id])

    if @character_class_specialization.update(character_class_specialization_params)
      head :no_content
    else
      render json: @character_class_specialization.errors, status: :unprocessable_entity
    end
  end

  # DELETE /character_class_specializations/1
  # DELETE /character_class_specializations/1.json
  def destroy
    @character_class_specialization.destroy

    head :no_content
  end

  private

    def set_character_class_specialization
      @character_class_specialization = CharacterClassSpecialization.find(params[:id])
    end

    def character_class_specialization_params
      params.require(:character_class_specialization).permit(:name, :description, :min_level, :alignment_id, :character_class_id)
    end
end
