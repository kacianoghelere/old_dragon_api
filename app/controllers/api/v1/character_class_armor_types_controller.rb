class API::V1::CharacterClassArmorTypesController < ApplicationController
  before_filter :authenticate_request!
  before_action :set_character_class_armor_type, only: [:show, :update, :destroy]

  # GET /character_class_armor_types
  # GET /character_class_armor_types.json
  def index
    @character_class_armor_types = CharacterClassArmorType.all

    render json: @character_class_armor_types
  end

  # GET /character_class_armor_types/1
  # GET /character_class_armor_types/1.json
  def show
    render json: @character_class_armor_type
  end

  # POST /character_class_armor_types
  # POST /character_class_armor_types.json
  def create
    @character_class_armor_type = CharacterClassArmorType.new(character_class_armor_type_params)

    if @character_class_armor_type.save
      render json: @character_class_armor_type, status: :created, location: @character_class_armor_type
    else
      render json: @character_class_armor_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /character_class_armor_types/1
  # PATCH/PUT /character_class_armor_types/1.json
  def update
    @character_class_armor_type = CharacterClassArmorType.find(params[:id])

    if @character_class_armor_type.update(character_class_armor_type_params)
      head :no_content
    else
      render json: @character_class_armor_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /character_class_armor_types/1
  # DELETE /character_class_armor_types/1.json
  def destroy
    @character_class_armor_type.destroy

    head :no_content
  end

  private

    def set_character_class_armor_type
      @character_class_armor_type = CharacterClassArmorType.find(params[:id])
    end

    def character_class_armor_type_params
      params.require(:character_class_armor_type).permit(:character_class_id, :armor_type_id)
    end
end
