class API::V1::ElementTypesController < ApplicationController
  before_filter :authenticate_request!
  before_action :set_element_type, only: [:show, :update, :destroy]

  # GET /element_types
  # GET /element_types.json
  def index
    @element_types = ElementType.all

    render json: @element_types
  end

  # GET /element_types/1
  # GET /element_types/1.json
  def show
    render json: @element_type
  end

  # POST /element_types
  # POST /element_types.json
  def create
    @element_type = ElementType.new(element_type_params)

    if @element_type.save
      render json: @element_type, status: :created, location: @element_type
    else
      render json: @element_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /element_types/1
  # PATCH/PUT /element_types/1.json
  def update
    @element_type = ElementType.find(params[:id])

    if @element_type.update(element_type_params)
      head :no_content
    else
      render json: @element_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /element_types/1
  # DELETE /element_types/1.json
  def destroy
    @element_type.destroy

    head :no_content
  end

  private

    def set_element_type
      @element_type = ElementType.find(params[:id])
    end

    def element_type_params
      params.require(:element_type).permit(:name)
    end
end
