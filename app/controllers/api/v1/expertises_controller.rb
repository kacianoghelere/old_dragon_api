class API::V1::ExpertisesController < ApplicationController
  before_action :set_expertise, only: [:show, :update, :destroy]

  # GET /api/v1/expertises
  # GET /api/v1/expertises.json
  def index
    @expertises = Expertise.all

    render json: @expertises
  end

  # GET /api/v1/expertises/1
  # GET /api/v1/expertises/1.json
  def show
    render json: @expertise
  end

  # POST /api/v1/expertises
  # POST /api/v1/expertises.json
  def create
    @expertise = Expertise.new(expertise_params)

    if @expertise.save
      render json: @expertise, status: :created, location: @expertise
    else
      render json: @expertise.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/expertises/1
  # PATCH/PUT /api/v1/expertises/1.json
  def update
    @expertise = Expertise.find(params[:id])

    if @expertise.update(expertise_params)
      head :no_content
    else
      render json: @expertise.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/expertises/1
  # DELETE /api/v1/expertises/1.json
  def destroy
    @expertise.destroy

    head :no_content
  end

  private

    def set_expertise
      @expertise = Expertise.find(params[:id])
    end

    def expertise_params
      params.require(:expertise).permit(:name, :modifier, :attr, :user_id)
    end
end
