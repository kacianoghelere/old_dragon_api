class ExpertisesController < ApplicationController
  before_action :set_expertise, only: [:show, :update, :destroy]

  # GET /expertises
  # GET /expertises.json
  def index
    @expertises = Expertise.all

    render json: @expertises
  end

  # GET /expertises/1
  # GET /expertises/1.json
  def show
    render json: @expertise
  end

  # POST /expertises
  # POST /expertises.json
  def create
    @expertise = Expertise.new(expertise_params)

    if @expertise.save
      render json: @expertise, status: :created, location: @expertise
    else
      render json: @expertise.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /expertises/1
  # PATCH/PUT /expertises/1.json
  def update
    @expertise = Expertise.find(params[:id])

    if @expertise.update(expertise_params)
      head :no_content
    else
      render json: @expertise.errors, status: :unprocessable_entity
    end
  end

  # DELETE /expertises/1
  # DELETE /expertises/1.json
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
