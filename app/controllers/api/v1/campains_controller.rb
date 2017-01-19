class API::V1::CampainsController < ApplicationController
  before_action :set_campain, only: [:show, :update, :destroy]

  # GET /api/v1/campains
  # GET /api/v1/campains.json
  def index
    @campains = Campain.all

    render json: @campains
  end

  # GET /api/v1/campains/1
  # GET /api/v1/campains/1.json
  def show
    render json: @campain
  end

  # POST /api/v1/campains
  # POST /api/v1/campains.json
  def create
    @campain = Campain.new(campain_params)

    if @campain.save
      render json: @campain, status: :created, location: @campain
    else
      render json: @campain.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/campains/1
  # PATCH/PUT /api/v1/campains/1.json
  def update
    @campain = Campain.find(params[:id])

    if @campain.update(campain_params)
      head :no_content
    else
      render json: @campain.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/campains/1
  # DELETE /api/v1/campains/1.json
  def destroy
    @campain.destroy

    head :no_content
  end

  private

    def set_campain
      @campain = Campain.find(params[:id])
    end

    def campain_params
      params.require(:campain).permit(:title, :description, :start_date, :conclusion_date, :user_id)
    end
end
