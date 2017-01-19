class API::V1::ArmorsController < ApplicationController
  before_action :set_armor, only: [:show, :update, :destroy]

  # GET /api/v1/armors
  # GET /api/v1/armors.json
  def index
    @armors = Armor.all

    render json: @armors
  end

  # GET /api/v1/armors/1
  # GET /api/v1/armors/1.json
  def show
    render json: @armor
  end

  # POST /api/v1/armors
  # POST /api/v1/armors.json
  def create
    @armor = Armor.new(armor_params)

    if @armor.save
      render json: @armor, status: :created, location: @armor
    else
      render json: @armor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/armors/1
  # PATCH/PUT /api/v1/armors/1.json
  def update
    @armor = Armor.find(params[:id])

    if @armor.update(armor_params)
      head :no_content
    else
      render json: @armor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/armors/1
  # DELETE /api/v1/armors/1.json
  def destroy
    @armor.destroy

    head :no_content
  end

  private

    def set_armor
      @armor = Armor.find(params[:id])
    end

    def armor_params
      params.require(:armor).permit(:name, :description, :armor_class, :movement_reduction, :price, :alignment_id, :armor_type_id, :origin_id, :user_id)
    end
end
