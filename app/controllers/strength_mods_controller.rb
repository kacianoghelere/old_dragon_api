class StrengthModsController < ApplicationController
  before_action :set_strength_mod, only: [:show, :update, :destroy]

  # GET /strength_mods
  # GET /strength_mods.json
  def index
    @strength_mods = StrengthMod.all

    render json: @strength_mods
  end

  # GET /strength_mods/1
  # GET /strength_mods/1.json
  def show
    render json: @strength_mod
  end

  # POST /strength_mods
  # POST /strength_mods.json
  def create
    @strength_mod = StrengthMod.new(strength_mod_params)

    if @strength_mod.save
      render json: @strength_mod, status: :created, location: @strength_mod
    else
      render json: @strength_mod.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /strength_mods/1
  # PATCH/PUT /strength_mods/1.json
  def update
    @strength_mod = StrengthMod.find(params[:id])

    if @strength_mod.update(strength_mod_params)
      head :no_content
    else
      render json: @strength_mod.errors, status: :unprocessable_entity
    end
  end

  # DELETE /strength_mods/1
  # DELETE /strength_mods/1.json
  def destroy
    @strength_mod.destroy

    head :no_content
  end

  private

    def set_strength_mod
      @strength_mod = StrengthMod.find(params[:id])
    end

    def strength_mod_params
      params.require(:strength_mod).permit(:value, :attack_mod, :damage_mod)
    end
end
