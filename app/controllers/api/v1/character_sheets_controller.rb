class API::V1::CharacterSheetsController < ApplicationController
  before_action :set_character_sheet, only: [:show, :update, :destroy]

  # GET /character_sheets
  # GET /character_sheets.json
  def index
    @character_sheets = CharacterSheet.all

    render json: @character_sheets
  end

  # GET /character_sheets/1
  # GET /character_sheets/1.json
  def show
    render json: @character_sheet
  end

  # POST /character_sheets
  # POST /character_sheets.json
  def create
    @character_sheet = CharacterSheet.new(character_sheet_params)

    if @character_sheet.save
      render json: @character_sheet, status: :created, location: @character_sheet
    else
      render json: @character_sheet.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /character_sheets/1
  # PATCH/PUT /character_sheets/1.json
  def update
    @character_sheet = CharacterSheet.find(params[:id])

    if @character_sheet.update(character_sheet_params)
      head :no_content
    else
      render json: @character_sheet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /character_sheets/1
  # DELETE /character_sheets/1.json
  def destroy
    @character_sheet.destroy

    head :no_content
  end

  private

    def set_character_sheet
      @character_sheet = CharacterSheet.find(params[:id])
    end

    def character_sheet_params
      params.require(:character_sheet).permit(:name, :weight, :height, :age, :description, :character_class_id, :character_race_id, :user_id)
    end
end
