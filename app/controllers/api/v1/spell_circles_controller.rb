class API::V1::SpellCirclesController < ApplicationController
  before_action :set_spell_circle, only: [:show, :update, :destroy]

  # GET /api/v1/spell_circles
  # GET /api/v1/spell_circles.json
  def index
    @spell_circles = SpellCircle.all

    render json: @spell_circles
  end

  # GET /api/v1/spell_circles/1
  # GET /api/v1/spell_circles/1.json
  def show
    render json: @spell_circle
  end

  # POST /api/v1/spell_circles
  # POST /api/v1/spell_circles.json
  def create
    @spell_circle = SpellCircle.new(spell_circle_params)

    if @spell_circle.save
      render json: @spell_circle, status: :created, location: @spell_circle
    else
      render json: @spell_circle.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/spell_circles/1
  # PATCH/PUT /api/v1/spell_circles/1.json
  def update
    @spell_circle = SpellCircle.find(params[:id])

    if @spell_circle.update(spell_circle_params)
      head :no_content
    else
      render json: @spell_circle.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/spell_circles/1
  # DELETE /api/v1/spell_circles/1.json
  def destroy
    @spell_circle.destroy

    head :no_content
  end

  private

    def set_spell_circle
      @spell_circle = SpellCircle.find(params[:id])
    end

    def spell_circle_params
      params.require(:spell_circle).permit(:circle, :spell_type_id)
    end
end
