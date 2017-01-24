class API::V1::WeaponsController < ApplicationController
  before_filter :authenticate_request!
  before_filter :check_admin, only: [:destroy]
  before_action :set_weapon, only: [:show, :update, :destroy]

  # GET /weapons
  # GET /weapons.json
  def index
    @weapons = Weapon.all

    render json: @weapons
  end

  # GET /weapons/1
  # GET /weapons/1.json
  def show
    render json: @weapon
  end

  # POST /weapons
  # POST /weapons.json
  def create
    @weapon = Weapon.new(weapon_params)

    if @weapon.save
      render json: @weapon, status: :created, location: @weapon
    else
      render json: @weapon.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /weapons/1
  # PATCH/PUT /weapons/1.json
  def update
    @weapon = Weapon.find(params[:id])

    if @weapon.update(weapon_params)
      head :no_content
    else
      render json: @weapon.errors, status: :unprocessable_entity
    end
  end

  # DELETE /weapons/1
  # DELETE /weapons/1.json
  def destroy
    @weapon.destroy

    head :no_content
  end

  private

    def set_weapon
      @weapon = Weapon.find(params[:id])
    end

    def weapon_params
      params.require(:weapon).permit(:name, :description, :initiative, :ranged, :range, :damage, :weight, :price, :alignment_id, :dice_id, :material_type_id, :origin_id, :user_id, :weapon_type_id)
    end
end
