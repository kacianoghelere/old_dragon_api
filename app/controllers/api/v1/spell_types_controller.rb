class API::V1::SpellTypesController < ApplicationController
  before_filter :authenticate_request!
  before_action :set_spell_type, only: [:show, :update, :destroy]

  # GET /spell_types
  # GET /spell_types.json
  def index
    @spell_types = SpellType.all

    render json: @spell_types
  end

  # GET /spell_types/1
  # GET /spell_types/1.json
  def show
    render json: @spell_type
  end

  # POST /spell_types
  # POST /spell_types.json
  def create
    @spell_type = SpellType.new(spell_type_params)

    if @spell_type.save
      render json: @spell_type, status: :created, location: @spell_type
    else
      render json: @spell_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /spell_types/1
  # PATCH/PUT /spell_types/1.json
  def update
    @spell_type = SpellType.find(params[:id])

    if @spell_type.update(spell_type_params)
      head :no_content
    else
      render json: @spell_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /spell_types/1
  # DELETE /spell_types/1.json
  def destroy
    @spell_type.destroy

    head :no_content
  end

  private

    def set_spell_type
      @spell_type = SpellType.find(params[:id])
    end

    def spell_type_params
      params.require(:spell_type).permit(:name)
    end
end
