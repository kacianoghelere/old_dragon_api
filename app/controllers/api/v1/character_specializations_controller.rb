class API::V1::CharacterSpecializationsController < ApplicationController

  before_filter :authenticate_request!
  before_action :set_character_class, only: [:create, :update]
  before_action :set_character_specialization, only: [:show, :update, :destroy]

  # GET /character_specializations
  # GET /character_specializations.json
  def index
    @specializations = CharacterSpecialization.all.order(:name)

    render json: @specializations
  end

  # GET /character_specializations/1
  # GET /character_specializations/1.json
  def show
    render json: @specialization
  end

  # POST /character_specializations
  # POST /character_specializations.json
  def create
    @specialization = get_current_user.specializations.build(specialization_params)
    @specialization.character_class = @character_class
    @specialization.character_class = @character_class
    if @specialization.save
      render json: @specialization, status: :created
    else
      render json: @specialization.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /character_specializations/1
  # PATCH/PUT /character_specializations/1.json
  def update
    @specialization = CharacterSpecialization.find(params[:id])
    @specialization.character_class = @character_class

    if @specialization.update(specialization_params)
      render json: @specialization, status: :accepted
    else
      render json: @specialization.errors, status: :unprocessable_entity
    end
  end

  # DELETE /character_specializations/1
  # DELETE /character_specializations/1.json
  def destroy
    @specialization.destroy

    head :no_content
  end

  private

    def set_character_specialization
      @specialization = CharacterSpecialization.find_by("id = :id OR flat_name = :id",
                                                        id: params[:id])
    end

    def set_character_class
      @character_class = CharacterClass.find_by("id = :id OR flat_name = :id",
                    id: character_class_params[:character_class_id])
    end

    def specialization_params
      params.require(:character_specialization).permit(:name, :description,
        :picture, :min_level, :alignment_id,
        stages_attributes: [:id, :description, :unlock_level, :_destroy]
      )
    end

    def character_class_params
      params.require(:character_specialization).permit(:character_class_id)
    end
end
