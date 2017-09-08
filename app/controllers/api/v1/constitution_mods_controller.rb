class API::V1::ConstitutionModsController  < ApplicationController

  before_filter :authenticate_request!
  before_action :set_constitution_mod, only: [:show, :update, :destroy]

  # GET /constitution_mods
  # GET /constitution_mods.json
  def index
    @constitution_mods = ConstitutionMod.all

    render json: @constitution_mods
  end

  # GET /constitution_mods/1
  # GET /constitution_mods/1.json
  def show
    render json: @constitution_mod
  end

  # POST /constitution_mods
  # POST /constitution_mods.json
  def create
    @constitution_mod = ConstitutionMod.new(constitution_mod_params)

    if @constitution_mod.save
      render json: @constitution_mod, status: :created, location: @constitution_mod
    else
      render json: @constitution_mod.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /constitution_mods/1
  # PATCH/PUT /constitution_mods/1.json
  def update
    @constitution_mod = ConstitutionMod.find(params[:id])

    if @constitution_mod.update(constitution_mod_params)
      head :no_content
    else
      render json: @constitution_mod.errors, status: :unprocessable_entity
    end
  end

  # DELETE /constitution_mods/1
  # DELETE /constitution_mods/1.json
  def destroy
    @constitution_mod.destroy

    head :no_content
  end

  private

    def set_constitution_mod
      @constitution_mod = ConstitutionMod.find(params[:id])
    end

    def constitution_mod_params
      params.require(:constitution_mod).permit(:value, :hitpoints_mod, :protection_mod, :resurrection_mod)
    end
end
