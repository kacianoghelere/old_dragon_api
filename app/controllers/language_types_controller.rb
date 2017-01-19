class LanguageTypesController < ApplicationController
  before_action :set_language_type, only: [:show, :update, :destroy]

  # GET /language_types
  # GET /language_types.json
  def index
    @language_types = LanguageType.all

    render json: @language_types
  end

  # GET /language_types/1
  # GET /language_types/1.json
  def show
    render json: @language_type
  end

  # POST /language_types
  # POST /language_types.json
  def create
    @language_type = LanguageType.new(language_type_params)

    if @language_type.save
      render json: @language_type, status: :created, location: @language_type
    else
      render json: @language_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /language_types/1
  # PATCH/PUT /language_types/1.json
  def update
    @language_type = LanguageType.find(params[:id])

    if @language_type.update(language_type_params)
      head :no_content
    else
      render json: @language_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /language_types/1
  # DELETE /language_types/1.json
  def destroy
    @language_type.destroy

    head :no_content
  end

  private

    def set_language_type
      @language_type = LanguageType.find(params[:id])
    end

    def language_type_params
      params.require(:language_type).permit(:name, :description)
    end
end
