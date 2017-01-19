class CharacterRaceLanguagesController < ApplicationController
  before_action :set_character_race_language, only: [:show, :update, :destroy]

  # GET /character_race_languages
  # GET /character_race_languages.json
  def index
    @character_race_languages = CharacterRaceLanguage.all

    render json: @character_race_languages
  end

  # GET /character_race_languages/1
  # GET /character_race_languages/1.json
  def show
    render json: @character_race_language
  end

  # POST /character_race_languages
  # POST /character_race_languages.json
  def create
    @character_race_language = CharacterRaceLanguage.new(character_race_language_params)

    if @character_race_language.save
      render json: @character_race_language, status: :created, location: @character_race_language
    else
      render json: @character_race_language.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /character_race_languages/1
  # PATCH/PUT /character_race_languages/1.json
  def update
    @character_race_language = CharacterRaceLanguage.find(params[:id])

    if @character_race_language.update(character_race_language_params)
      head :no_content
    else
      render json: @character_race_language.errors, status: :unprocessable_entity
    end
  end

  # DELETE /character_race_languages/1
  # DELETE /character_race_languages/1.json
  def destroy
    @character_race_language.destroy

    head :no_content
  end

  private

    def set_character_race_language
      @character_race_language = CharacterRaceLanguage.find(params[:id])
    end

    def character_race_language_params
      params.require(:character_race_language).permit(:character_race_id, :language_type_id)
    end
end
