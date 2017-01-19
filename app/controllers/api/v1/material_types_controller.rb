class API::V1::MaterialTypesController < ApplicationController
  before_action :set_material_type, only: [:show, :update, :destroy]

  # GET /api/v1/material_types
  # GET /api/v1/material_types.json
  def index
    @material_types = MaterialType.all

    render json: @material_types
  end

  # GET /api/v1/material_types/1
  # GET /api/v1/material_types/1.json
  def show
    render json: @material_type
  end

  # POST /api/v1/material_types
  # POST /api/v1/material_types.json
  def create
    @material_type = MaterialType.new(material_type_params)

    if @material_type.save
      render json: @material_type, status: :created, location: @material_type
    else
      render json: @material_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/material_types/1
  # PATCH/PUT /api/v1/material_types/1.json
  def update
    @material_type = MaterialType.find(params[:id])

    if @material_type.update(material_type_params)
      head :no_content
    else
      render json: @material_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/material_types/1
  # DELETE /api/v1/material_types/1.json
  def destroy
    @material_type.destroy

    head :no_content
  end

  private

    def set_material_type
      @material_type = MaterialType.find(params[:id])
    end

    def material_type_params
      params.require(:material_type).permit(:name)
    end
end
