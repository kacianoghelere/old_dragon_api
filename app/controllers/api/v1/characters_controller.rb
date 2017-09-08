class API::V1::CharactersController  < ApplicationController

  before_filter :authenticate_request!
  before_action :set_character, only: [:show, :update, :destroy]

  # GET /characters
  # GET /characters.json
  def index
    @characters = Character.all

    render json: @characters
  end

  # GET /characters/1
  # GET /characters/1.json
  def show
    render json: @character
  end

  # POST /characters
  # POST /characters.json
  def create
    @character = Character.new(character_params)

    if @character.save
      render json: @character, status: :created, location: @character
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /characters/1
  # PATCH/PUT /characters/1.json
  def update
    @character = Character.find(params[:id])

    if @character.update(character_params)
      head :no_content
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  # DELETE /characters/1
  # DELETE /characters/1.json
  def destroy
    @character.destroy

    head :no_content
  end

  private

    def set_character
      @character = Character.find(params[:id])
    end

    def character_params
      params.require(:character).permit(:name, :weight, :height, :age, 
        :description, :character_class_id, :character_race_id, :user_id)
    end
end
