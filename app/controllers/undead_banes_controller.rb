class UndeadBanesController < ApplicationController
  before_action :set_undead_bane, only: [:show, :update, :destroy]

  # GET /undead_banes
  # GET /undead_banes.json
  def index
    @undead_banes = UndeadBane.all

    render json: @undead_banes
  end

  # GET /undead_banes/1
  # GET /undead_banes/1.json
  def show
    render json: @undead_bane
  end

  # POST /undead_banes
  # POST /undead_banes.json
  def create
    @undead_bane = UndeadBane.new(undead_bane_params)

    if @undead_bane.save
      render json: @undead_bane, status: :created, location: @undead_bane
    else
      render json: @undead_bane.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /undead_banes/1
  # PATCH/PUT /undead_banes/1.json
  def update
    @undead_bane = UndeadBane.find(params[:id])

    if @undead_bane.update(undead_bane_params)
      head :no_content
    else
      render json: @undead_bane.errors, status: :unprocessable_entity
    end
  end

  # DELETE /undead_banes/1
  # DELETE /undead_banes/1.json
  def destroy
    @undead_bane.destroy

    head :no_content
  end

  private

    def set_undead_bane
      @undead_bane = UndeadBane.find(params[:id])
    end

    def undead_bane_params
      params.require(:undead_bane).permit(:level, :skelleton_mod, :zombie_mod, :ghoul_mod, :inhuman_mod, :aparition_mod, :mummy_mod, :specter_mod, :vampire_mod)
    end
end
