class API::V1::SpellsController < ApplicationController
  before_action :set_spell, only: [:show, :update, :destroy]

  # GET /api/v1/spells
  # GET /api/v1/spells.json
  def index
    @spells = Spell.all

    render json: @spells
  end

  # GET /api/v1/spells/1
  # GET /api/v1/spells/1.json
  def show
    render json: @spell
  end

  # POST /api/v1/spells
  # POST /api/v1/spells.json
  def create
    @spell = Spell.new(spell_params)

    if @spell.save
      render json: @spell, status: :created, location: @spell
    else
      render json: @spell.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/spells/1
  # PATCH/PUT /api/v1/spells/1.json
  def update
    @spell = Spell.find(params[:id])

    if @spell.update(spell_params)
      head :no_content
    else
      render json: @spell.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/spells/1
  # DELETE /api/v1/spells/1.json
  def destroy
    @spell.destroy

    head :no_content
  end

  private

    def set_spell
      @spell = Spell.find(params[:id])
    end

    def spell_params
      params.require(:spell).permit(:name, :range, :duration, :description, :effect_id, :element_type_id, :spell_circle_id, :user_id)
    end
end
