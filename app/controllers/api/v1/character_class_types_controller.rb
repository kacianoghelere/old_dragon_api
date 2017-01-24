class API::V1::CharacterClassTypesController < ApplicationController
  before_filter :authenticate_request!
  before_action :set_character_class_type, only: [:show, :update, :destroy]

  # GET /character_class_types
  # GET /character_class_types.json
  def index
    @character_class_types = CharacterClassType.all

    render json: @character_class_types
  end

  # GET /character_class_types/1
  # GET /character_class_types/1.json
  def show
    render json: @character_class_type
  end

  # POST /character_class_types
  # POST /character_class_types.json
  def create
    @character_class_type = CharacterClassType.new(character_class_type_params)

    if @character_class_type.save
      render json: @character_class_type, status: :created, location: @character_class_type
    else
      render json: @character_class_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /character_class_types/1
  # PATCH/PUT /character_class_types/1.json
  def update
    @character_class_type = CharacterClassType.find(params[:id])

    if @character_class_type.update(character_class_type_params)
      head :no_content
    else
      render json: @character_class_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /character_class_types/1
  # DELETE /character_class_types/1.json
  def destroy
    @character_class_type.destroy

    head :no_content
  end

  private

    def set_character_class_type
      @character_class_type = CharacterClassType.find(params[:id])
    end

    def character_class_type_params
      params.require(:character_class_type).permit(:name, :magic, :protection, :key_attr, :can_bane_undead, :has_thief_talents)
    end
end
