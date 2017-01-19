class CharacterSheetAttributesController < ApplicationController
  before_action :set_character_sheet_attribute, only: [:show, :update, :destroy]

  # GET /character_sheet_attributes
  # GET /character_sheet_attributes.json
  def index
    @character_sheet_attributes = CharacterSheetAttribute.all

    render json: @character_sheet_attributes
  end

  # GET /character_sheet_attributes/1
  # GET /character_sheet_attributes/1.json
  def show
    render json: @character_sheet_attribute
  end

  # POST /character_sheet_attributes
  # POST /character_sheet_attributes.json
  def create
    @character_sheet_attribute = CharacterSheetAttribute.new(character_sheet_attribute_params)

    if @character_sheet_attribute.save
      render json: @character_sheet_attribute, status: :created, location: @character_sheet_attribute
    else
      render json: @character_sheet_attribute.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /character_sheet_attributes/1
  # PATCH/PUT /character_sheet_attributes/1.json
  def update
    @character_sheet_attribute = CharacterSheetAttribute.find(params[:id])

    if @character_sheet_attribute.update(character_sheet_attribute_params)
      head :no_content
    else
      render json: @character_sheet_attribute.errors, status: :unprocessable_entity
    end
  end

  # DELETE /character_sheet_attributes/1
  # DELETE /character_sheet_attributes/1.json
  def destroy
    @character_sheet_attribute.destroy

    head :no_content
  end

  private

    def set_character_sheet_attribute
      @character_sheet_attribute = CharacterSheetAttribute.find(params[:id])
    end

    def character_sheet_attribute_params
      params.require(:character_sheet_attribute).permit(:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma)
    end
end
