class API::V1::EffectsController < ApplicationController
  before_action :set_effect, only: [:show, :update, :destroy]

  # GET /effects
  # GET /effects.json
  def index
    @effects = Effect.all

    render json: @effects
  end

  # GET /effects/1
  # GET /effects/1.json
  def show
    render json: @effect
  end

  # POST /effects
  # POST /effects.json
  def create
    @effect = Effect.new(effect_params)

    if @effect.save
      render json: @effect, status: :created, location: @effect
    else
      render json: @effect.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /effects/1
  # PATCH/PUT /effects/1.json
  def update
    @effect = Effect.find(params[:id])

    if @effect.update(effect_params)
      head :no_content
    else
      render json: @effect.errors, status: :unprocessable_entity
    end
  end

  # DELETE /effects/1
  # DELETE /effects/1.json
  def destroy
    @effect.destroy

    head :no_content
  end

  private

    def set_effect
      @effect = Effect.find(params[:id])
    end

    def effect_params
      params.require(:effect).permit(:name, :description, :effect_type_id, :user_id)
    end
end
