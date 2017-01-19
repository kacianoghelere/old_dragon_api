class API::V1::CharacterClassesController < ApplicationController
  before_action :set_character_class, only: [:show, :update, :destroy]

  # GET /api/v1/character_classes
  # GET /api/v1/character_classes.json
  def index
    @character_classes = CharacterClass.all

    render json: @character_classes
  end

  # GET /api/v1/character_classes/1
  # GET /api/v1/character_classes/1.json
  def show
    render json: @character_class
  end

  # POST /api/v1/character_classes
  # POST /api/v1/character_classes.json
  def create
    @character_class = CharacterClass.new(character_class_params)

    if @character_class.save
      render json: @character_class, status: :created, location: @character_class
    else
      render json: @character_class.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/character_classes/1
  # PATCH/PUT /api/v1/character_classes/1.json
  def update
    @character_class = CharacterClass.find(params[:id])

    if @character_class.update(character_class_params)
      head :no_content
    else
      render json: @character_class.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/character_classes/1
  # DELETE /api/v1/character_classes/1.json
  def destroy
    @character_class.destroy

    head :no_content
  end

  private

    def set_character_class
      @character_class = CharacterClass.find(params[:id])
    end

    def character_class_params
      params.require(:character_class).permit(:name, :description, :dice_id, :perk_id, :character_class_type_id, :user_id)
    end
end
