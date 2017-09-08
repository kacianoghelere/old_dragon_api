class API::V1::CharismaModsController  < ApplicationController

  before_filter :authenticate_request!
  before_action :set_charisma_mod, only: [:show, :update, :destroy]

  # GET /charisma_mods
  # GET /charisma_mods.json
  def index
    @charisma_mods = CharismaMod.all

    render json: @charisma_mods
  end

  # GET /charisma_mods/1
  # GET /charisma_mods/1.json
  def show
    render json: @charisma_mod
  end

  # POST /charisma_mods
  # POST /charisma_mods.json
  def create
    @charisma_mod = CharismaMod.new(charisma_mod_params)

    if @charisma_mod.save
      render json: @charisma_mod, status: :created, location: @charisma_mod
    else
      render json: @charisma_mod.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /charisma_mods/1
  # PATCH/PUT /charisma_mods/1.json
  def update
    @charisma_mod = CharismaMod.find(params[:id])

    if @charisma_mod.update(charisma_mod_params)
      head :no_content
    else
      render json: @charisma_mod.errors, status: :unprocessable_entity
    end
  end

  # DELETE /charisma_mods/1
  # DELETE /charisma_mods/1.json
  def destroy
    @charisma_mod.destroy

    head :no_content
  end

  private

    def set_charisma_mod
      @charisma_mod = CharismaMod.find(params[:id])
    end

    def charisma_mod_params
      params.require(:charisma_mod).permit(:value, :followers_mod, :reaction_mod, :undead_mod)
    end
end
