class API::V1::PerkTypesController < ApplicationController
  before_action :set_perk_type, only: [:show, :update, :destroy]

  # GET /api/v1/perk_types
  # GET /api/v1/perk_types.json
  def index
    @perk_types = PerkType.all

    render json: @perk_types
  end

  # GET /api/v1/perk_types/1
  # GET /api/v1/perk_types/1.json
  def show
    render json: @perk_type
  end

  # POST /api/v1/perk_types
  # POST /api/v1/perk_types.json
  def create
    @perk_type = PerkType.new(perk_type_params)

    if @perk_type.save
      render json: @perk_type, status: :created, location: @perk_type
    else
      render json: @perk_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/perk_types/1
  # PATCH/PUT /api/v1/perk_types/1.json
  def update
    @perk_type = PerkType.find(params[:id])

    if @perk_type.update(perk_type_params)
      head :no_content
    else
      render json: @perk_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/perk_types/1
  # DELETE /api/v1/perk_types/1.json
  def destroy
    @perk_type.destroy

    head :no_content
  end

  private

    def set_perk_type
      @perk_type = PerkType.find(params[:id])
    end

    def perk_type_params
      params.require(:perk_type).permit(:name)
    end
end
