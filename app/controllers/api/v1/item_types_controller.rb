class API::V1::ItemTypesController < ApplicationController
  before_action :set_item_type, only: [:show, :update, :destroy]

  # GET /item_types
  # GET /item_types.json
  def index
    @item_types = ItemType.all

    render json: @item_types
  end

  # GET /item_types/1
  # GET /item_types/1.json
  def show
    render json: @item_type
  end

  # POST /item_types
  # POST /item_types.json
  def create
    @item_type = ItemType.new(item_type_params)

    if @item_type.save
      render json: @item_type, status: :created, location: @item_type
    else
      render json: @item_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /item_types/1
  # PATCH/PUT /item_types/1.json
  def update
    @item_type = ItemType.find(params[:id])

    if @item_type.update(item_type_params)
      head :no_content
    else
      render json: @item_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /item_types/1
  # DELETE /item_types/1.json
  def destroy
    @item_type.destroy

    head :no_content
  end

  private

    def set_item_type
      @item_type = ItemType.find(params[:id])
    end

    def item_type_params
      params.require(:item_type).permit(:name)
    end
end
