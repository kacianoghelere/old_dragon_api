class API::V1::OriginsController < ApplicationController
  before_action :set_origin, only: [:show, :update, :destroy]

  # GET /origins
  # GET /origins.json
  def index
    @origins = Origin.all

    render json: @origins
  end

  # GET /origins/1
  # GET /origins/1.json
  def show
    render json: @origin
  end

  # POST /origins
  # POST /origins.json
  def create
    @origin = Origin.new(origin_params)

    if @origin.save
      render json: @origin, status: :created, location: @origin
    else
      render json: @origin.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /origins/1
  # PATCH/PUT /origins/1.json
  def update
    @origin = Origin.find(params[:id])

    if @origin.update(origin_params)
      head :no_content
    else
      render json: @origin.errors, status: :unprocessable_entity
    end
  end

  # DELETE /origins/1
  # DELETE /origins/1.json
  def destroy
    @origin.destroy

    head :no_content
  end

  private

    def set_origin
      @origin = Origin.find(params[:id])
    end

    def origin_params
      params.require(:origin).permit(:name, :variation, :bonus)
    end
end
