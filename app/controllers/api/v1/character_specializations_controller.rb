class API::V1::CharacterSpecializationsController < ApplicationController

  before_filter :authenticate_request!
  before_action :set_character_specialization, only: [:show, :update, :destroy]

  # GET /character_specializations
  # GET /character_specializations.json
  def index
    @specializations = CharacterSpecialization.all

    render json: @specializations
  end

  # GET /character_specializations/1
  # GET /character_specializations/1.json
  def show
    render json: @specialization
  end

  # POST /character_specializations
  # POST /character_specializations.json
  def create
    @specialization = CharacterSpecialization.new(character_specialization_params)

    if @specialization.save
      render json: @specialization, status: :created, location: @specialization
    else
      render json: @specialization.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /character_specializations/1
  # PATCH/PUT /character_specializations/1.json
  def update
    @specialization = CharacterSpecialization.find(params[:id])

    if @specialization.update(character_specialization_params)
      head :no_content
    else
      render json: @specialization.errors, status: :unprocessable_entity
    end
  end

  # DELETE /character_specializations/1
  # DELETE /character_specializations/1.json
  def destroy
    @specialization.destroy

    head :no_content
  end

  private

    def set_character_specialization
      @specialization = CharacterSpecialization.find_by("id = :id OR flat_name = :id",
                                                        id: params[:id])
    end

    def character_specialization_params
      params[:character_specialization]
    end
end
