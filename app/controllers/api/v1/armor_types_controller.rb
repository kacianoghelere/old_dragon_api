class API::V1::ArmorTypesController < ApplicationController
  before_filter :authenticate_request!
  before_filter :check_admin,   only: [:create, :update, :destroy]
  before_action :set_armor_type, only: [:show, :update, :destroy]

  # GET /armor_types
  # GET /armor_types.json
  def index
    @armor_types = ArmorType.all

    render json: @armor_types
  end

  # GET /armor_types/1
  # GET /armor_types/1.json
  def show
    render json: @armor_type
  end

  # POST /armor_types
  # POST /armor_types.json
  def create
    @armor_type = ArmorType.new(armor_type_params)

    if @armor_type.save
      render json: @armor_type, status: :created, location: @armor_type
    else
      render json: @armor_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /armor_types/1
  # PATCH/PUT /armor_types/1.json
  def update
    @armor_type = ArmorType.find(params[:id])

    if @armor_type.update(armor_type_params)
      head :no_content
    else
      render json: @armor_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /armor_types/1
  # DELETE /armor_types/1.json
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
