class IntelligenceModsController < ApplicationController
  before_action :set_intelligence_mod, only: [:show, :update, :destroy]

  # GET /intelligence_mods
  # GET /intelligence_mods.json
  def index
    @intelligence_mods = IntelligenceMod.all

    render json: @intelligence_mods
  end

  # GET /intelligence_mods/1
  # GET /intelligence_mods/1.json
  def show
    render json: @intelligence_mod
  end

  # POST /intelligence_mods
  # POST /intelligence_mods.json
  def create
    @intelligence_mod = IntelligenceMod.new(intelligence_mod_params)

    if @intelligence_mod.save
      render json: @intelligence_mod, status: :created, location: @intelligence_mod
    else
      render json: @intelligence_mod.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /intelligence_mods/1
  # PATCH/PUT /intelligence_mods/1.json
  def update
    @intelligence_mod = IntelligenceMod.find(params[:id])

    if @intelligence_mod.update(intelligence_mod_params)
      head :no_content
    else
      render json: @intelligence_mod.errors, status: :unprocessable_entity
    end
  end

  # DELETE /intelligence_mods/1
  # DELETE /intelligence_mods/1.json
  def destroy
    @intelligence_mod.destroy

    head :no_content
  end

  private

    def set_intelligence_mod
      @intelligence_mod = IntelligenceMod.find(params[:id])
    end

    def intelligence_mod_params
      params.require(:intelligence_mod).permit(:value, :languages_mod, :learn_magic_mod, :magic_circle_1_mod, :magic_circle_2_mod, :magic_circle_3_mod, :magic_circle_4_mod, :magic_circle_5_mod, :magic_circle_6_mod, :magic_circle_7_mod, :magic_circle_8_mod, :magic_circle_9_mod)
    end
end
