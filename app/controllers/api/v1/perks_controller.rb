class API::V1::PerksController < ApplicationController
  before_action :set_perk, only: [:show, :update, :destroy]

  # GET /api/v1/perks
  # GET /api/v1/perks.json
  def index
    @perks = Perk.all

    render json: @perks
  end

  # GET /api/v1/perks/1
  # GET /api/v1/perks/1.json
  def show
    render json: @perk
  end

  # POST /api/v1/perks
  # POST /api/v1/perks.json
  def create
    @perk = Perk.new(perk_params)

    if @perk.save
      render json: @perk, status: :created, location: @perk
    else
      render json: @perk.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/perks/1
  # PATCH/PUT /api/v1/perks/1.json
  def update
    @perk = Perk.find(params[:id])

    if @perk.update(perk_params)
      head :no_content
    else
      render json: @perk.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/perks/1
  # DELETE /api/v1/perks/1.json
  def destroy
    @perk.destroy

    head :no_content
  end

  private

    def set_perk
      @perk = Perk.find(params[:id])
    end

    def perk_params
      params.require(:perk).permit(:name, :description, :perk_type_id, :user_id)
    end
end
