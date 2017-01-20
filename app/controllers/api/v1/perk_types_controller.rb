class API::V1::PerkTypesController < ApplicationController
  before_action :set_perk_type, only: [:show, :update, :destroy]

  # GET /perk_types
  # GET /perk_types.json
  def index
    @perk_types = PerkType.all

    render json: @perk_types
  end

  # GET /perk_types/1
  # GET /perk_types/1.json
  def show
    render json: @perk_type
  end

  # POST /perk_types
  # POST /perk_types.json
  def create
    @perk_type = PerkType.new(perk_type_params)

    if @perk_type.save
      render json: @perk_type, status: :created, location: @perk_type
    else
      render json: @perk_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /perk_types/1
  # PATCH/PUT /perk_types/1.json
  def update
    @perk_type = PerkType.find(params[:id])

    if @perk_type.update(perk_type_params)
      head :no_content
    else
      render json: @perk_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /perk_types/1
  # DELETE /perk_types/1.json
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
