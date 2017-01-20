class API::V1::WisdomModsController < ApplicationController
  before_action :set_wisdom_mod, only: [:show, :update, :destroy]

  # GET /wisdom_mods
  # GET /wisdom_mods.json
  def index
    @wisdom_mods = WisdomMod.all

    render json: @wisdom_mods
  end

  # GET /wisdom_mods/1
  # GET /wisdom_mods/1.json
  def show
    render json: @wisdom_mod
  end

  # POST /wisdom_mods
  # POST /wisdom_mods.json
  def create
    @wisdom_mod = WisdomMod.new(wisdom_mod_params)

    if @wisdom_mod.save
      render json: @wisdom_mod, status: :created, location: @wisdom_mod
    else
      render json: @wisdom_mod.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /wisdom_mods/1
  # PATCH/PUT /wisdom_mods/1.json
  def update
    @wisdom_mod = WisdomMod.find(params[:id])

    if @wisdom_mod.update(wisdom_mod_params)
      head :no_content
    else
      render json: @wisdom_mod.errors, status: :unprocessable_entity
    end
  end

  # DELETE /wisdom_mods/1
  # DELETE /wisdom_mods/1.json
  def destroy
    @wisdom_mod.destroy

    head :no_content
  end

  private

    def set_wisdom_mod
      @wisdom_mod = WisdomMod.find(params[:id])
    end

    def wisdom_mod_params
      params.require(:wisdom_mod).permit(:value, :protection_mod, :magic_cicle_1_mod, :magic_cicle_2_mod, :magic_cicle_3_mod)
    end
end
