class API::V1::TraitTypesController  < ApplicationController

  before_filter :authenticate_request!
  before_action :set_trait_type, only: [:show, :update, :destroy]

  # GET /trait_types
  # GET /trait_types.json
  def index
    @trait_types = TraitType.all

    render json: @trait_types
  end

  # GET /trait_types/1
  # GET /trait_types/1.json
  def show
    render json: @trait_type
  end

  # POST /trait_types
  # POST /trait_types.json
  def create
    @trait_type = TraitType.new(trait_type_params)

    if @trait_type.save
      render json: @trait_type, status: :created, location: @trait_type
    else
      render json: @trait_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trait_types/1
  # PATCH/PUT /trait_types/1.json
  def update
    @trait_type = TraitType.find(params[:id])

    if @trait_type.update(trait_type_params)
      head :no_content
    else
      render json: @trait_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trait_types/1
  # DELETE /trait_types/1.json
  def destroy
    @trait_type.destroy

    head :no_content
  end

  private

    def set_trait_type
      @trait_type = TraitType.find(params[:id])
    end

    def trait_type_params
      params.require(:trait_type).permit(:name)
    end
end
