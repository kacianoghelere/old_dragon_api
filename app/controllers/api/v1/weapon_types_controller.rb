class API::V1::WeaponTypesController < ApplicationController
  before_action :set_weapon_type, only: [:show, :update, :destroy]

  # GET /api/v1/weapon_types
  # GET /api/v1/weapon_types.json
  def index
    @weapon_types = WeaponType.all

    render json: @weapon_types
  end

  # GET /api/v1/weapon_types/1
  # GET /api/v1/weapon_types/1.json
  def show
    render json: @weapon_type
  end

  # POST /api/v1/weapon_types
  # POST /api/v1/weapon_types.json
  def create
    @weapon_type = WeaponType.new(weapon_type_params)

    if @weapon_type.save
      render json: @weapon_type, status: :created, location: @weapon_type
    else
      render json: @weapon_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/weapon_types/1
  # PATCH/PUT /api/v1/weapon_types/1.json
  def update
    @weapon_type = WeaponType.find(params[:id])

    if @weapon_type.update(weapon_type_params)
      head :no_content
    else
      render json: @weapon_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/weapon_types/1
  # DELETE /api/v1/weapon_types/1.json
  def destroy
    @weapon_type.destroy

    head :no_content
  end

  private

    def set_weapon_type
      @weapon_type = WeaponType.find(params[:id])
    end

    def weapon_type_params
      params.require(:weapon_type).permit(:name)
    end
end
