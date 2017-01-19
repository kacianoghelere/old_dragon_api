class API::V1::CharacterClassMagicCirclesController < ApplicationController
  before_action :set_character_class_magic_circle, only: [:show, :update, :destroy]

  # GET /api/v1/character_class_magic_circles
  # GET /api/v1/character_class_magic_circles.json
  def index
    @character_class_magic_circles = CharacterClassMagicCircle.all

    render json: @character_class_magic_circles
  end

  # GET /api/v1/character_class_magic_circles/1
  # GET /api/v1/character_class_magic_circles/1.json
  def show
    render json: @character_class_magic_circle
  end

  # POST /api/v1/character_class_magic_circles
  # POST /api/v1/character_class_magic_circles.json
  def create
    @character_class_magic_circle = CharacterClassMagicCircle.new(character_class_magic_circle_params)

    if @character_class_magic_circle.save
      render json: @character_class_magic_circle, status: :created, location: @character_class_magic_circle
    else
      render json: @character_class_magic_circle.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/character_class_magic_circles/1
  # PATCH/PUT /api/v1/character_class_magic_circles/1.json
  def update
    @character_class_magic_circle = CharacterClassMagicCircle.find(params[:id])

    if @character_class_magic_circle.update(character_class_magic_circle_params)
      head :no_content
    else
      render json: @character_class_magic_circle.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/character_class_magic_circles/1
  # DELETE /api/v1/character_class_magic_circles/1.json
  def destroy
    @character_class_magic_circle.destroy

    head :no_content
  end

  private

    def set_character_class_magic_circle
      @character_class_magic_circle = CharacterClassMagicCircle.find(params[:id])
    end

    def character_class_magic_circle_params
      params.require(:character_class_magic_circle).permit(:level, :magic_circle_1, :magic_circle_2, :magic_circle_3, :magic_circle_4, :magic_circle_5, :magic_circle_6, :magic_circle_7, :magic_circle_8, :magic_circle_9, :character_class_id)
    end
end
