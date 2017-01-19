class API::V1::EffectTypesController < ApplicationController
  before_action :set_effect_type, only: [:show, :update, :destroy]

  # GET /api/v1/effect_types
  # GET /api/v1/effect_types.json
  def index
    @effect_types = EffectType.all

    render json: @effect_types
  end

  # GET /api/v1/effect_types/1
  # GET /api/v1/effect_types/1.json
  def show
    render json: @effect_type
  end

  # POST /api/v1/effect_types
  # POST /api/v1/effect_types.json
  def create
    @effect_type = EffectType.new(effect_type_params)

    if @effect_type.save
      render json: @effect_type, status: :created, location: @effect_type
    else
      render json: @effect_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/effect_types/1
  # PATCH/PUT /api/v1/effect_types/1.json
  def update
    @effect_type = EffectType.find(params[:id])

    if @effect_type.update(effect_type_params)
      head :no_content
    else
      render json: @effect_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/effect_types/1
  # DELETE /api/v1/effect_types/1.json
  def destroy
    @effect_type.destroy

    head :no_content
  end

  private

    def set_effect_type
      @effect_type = EffectType.find(params[:id])
    end

    def effect_type_params
      params.require(:effect_type).permit(:name)
    end
end
