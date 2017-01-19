class API::V1::ArmorTypesController < ApplicationController
  before_action :set_armor_type, only: [:show, :update, :destroy]

  # GET /api/v1/armor_types
  # GET /api/v1/armor_types.json
  def index
    @armor_types = ArmorType.all

    render json: @armor_types
  end

  # GET /api/v1/armor_types/1
  # GET /api/v1/armor_types/1.json
  def show
    render json: @armor_type
  end

  # POST /api/v1/armor_types
  # POST /api/v1/armor_types.json
  def create
    @armor_type = ArmorType.new(armor_type_params)

    if @armor_type.save
      render json: @armor_type, status: :created, location: @armor_type
    else
      render json: @armor_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/armor_types/1
  # PATCH/PUT /api/v1/armor_types/1.json
  def update
    @armor_type = ArmorType.find(params[:id])

    if @armor_type.update(armor_type_params)
      head :no_content
    else
      render json: @armor_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/armor_types/1
  # DELETE /api/v1/armor_types/1.json
  def destroy
    @armor_type.destroy

    head :no_content
  end

  private

    def set_armor_type
      @armor_type = ArmorType.find(params[:id])
    end

    def armor_type_params
      params.require(:armor_type).permit(:name)
    end
end
