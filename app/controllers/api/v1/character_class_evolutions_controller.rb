class API::V1::CharacterClassEvolutionsController < ApplicationController
  before_action :set_character_class_evolution, only: [:show, :update, :destroy]

  # GET /api/v1/character_class_evolutions
  # GET /api/v1/character_class_evolutions.json
  def index
    @character_class_evolutions = CharacterClassEvolution.all

    render json: @character_class_evolutions
  end

  # GET /api/v1/character_class_evolutions/1
  # GET /api/v1/character_class_evolutions/1.json
  def show
    render json: @character_class_evolution
  end

  # POST /api/v1/character_class_evolutions
  # POST /api/v1/character_class_evolutions.json
  def create
    @character_class_evolution = CharacterClassEvolution.new(character_class_evolution_params)

    if @character_class_evolution.save
      render json: @character_class_evolution, status: :created, location: @character_class_evolution
    else
      render json: @character_class_evolution.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/character_class_evolutions/1
  # PATCH/PUT /api/v1/character_class_evolutions/1.json
  def update
    @character_class_evolution = CharacterClassEvolution.find(params[:id])

    if @character_class_evolution.update(character_class_evolution_params)
      head :no_content
    else
      render json: @character_class_evolution.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/character_class_evolutions/1
  # DELETE /api/v1/character_class_evolutions/1.json
  def destroy
    @character_class_evolution.destroy

    head :no_content
  end

  private

    def set_character_class_evolution
      @character_class_evolution = CharacterClassEvolution.find(params[:id])
    end

    def character_class_evolution_params
      params.require(:character_class_evolution).permit(:level, :exp, :life_amount, :plus_life, :attack_base, :attack_base2, :protection_mod, :character_class_id)
    end
end
