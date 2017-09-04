class API::V1::CharacterClassesController < ApplicationController
  before_action :set_character_class, only: [:show, :showcase, :update, :destroy]

  # GET /character_classes
  # GET /character_classes.json
  def index
    @character_classes = CharacterClass.all

    render json: @character_classes
  end

  # GET /character_classes/1
  # GET /character_classes/1.json
  def show
    render json: @character_class
  end

  # GET /character_classes/1/showcase
  # GET /character_classes/1/showcase.json
  def showcase
    render json: @character_class, :serializer => CharacterClassShowcaseSerializer
  end

  # POST /character_classes
  # POST /character_classes.json
  def create
    @character_class = CharacterClass.new(character_class_params)

    if @character_class.save
      render json: @character_class, status: :created, location: @character_class
    else
      render json: @character_class.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /character_classes/1
  # PATCH/PUT /character_classes/1.json
  def update
    @character_class = CharacterClass.find(params[:id])

    if @character_class.update(character_class_params)
      head :no_content
    else
      render json: @character_class.errors, status: :unprocessable_entity
    end
  end

  # DELETE /character_classes/1
  # DELETE /character_classes/1.json
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
