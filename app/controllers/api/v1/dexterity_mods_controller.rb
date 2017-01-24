class API::V1::DexterityModsController < ApplicationController
  before_filter :authenticate_request!
  before_action :set_dexterity_mod, only: [:show, :update, :destroy]

  # GET /dexterity_mods
  # GET /dexterity_mods.json
  def index
    @dexterity_mods = DexterityMod.all

    render json: @dexterity_mods
  end

  # GET /dexterity_mods/1
  # GET /dexterity_mods/1.json
  def show
    render json: @dexterity_mod
  end

  # POST /dexterity_mods
  # POST /dexterity_mods.json
  def create
    @dexterity_mod = DexterityMod.new(dexterity_mod_params)

    if @dexterity_mod.save
      render json: @dexterity_mod, status: :created, location: @dexterity_mod
    else
      render json: @dexterity_mod.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dexterity_mods/1
  # PATCH/PUT /dexterity_mods/1.json
  def update
    @dexterity_mod = DexterityMod.find(params[:id])

    if @dexterity_mod.update(dexterity_mod_params)
      head :no_content
    else
      render json: @dexterity_mod.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dexterity_mods/1
  # DELETE /dexterity_mods/1.json
  def destroy
    @dexterity_mod.destroy

    head :no_content
  end

  private

    def set_dexterity_mod
      @dexterity_mod = DexterityMod.find(params[:id])
    end

    def dexterity_mod_params
      params.require(:dexterity_mod).permit(:value, :attack_mod, :surprise_mod, :armor_class_mod, :protection_mod, :find_traps_mod, :silent_movement_mod, :lockpick_mod, :stealth_mod, :pickpocket_mod)
    end
end
