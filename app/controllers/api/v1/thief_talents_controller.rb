class API::V1::ThiefTalentsController < ApplicationController
  before_action :set_thief_talent, only: [:show, :update, :destroy]

  # GET /api/v1/thief_talents
  # GET /api/v1/thief_talents.json
  def index
    @thief_talents = ThiefTalent.all

    render json: @thief_talents
  end

  # GET /api/v1/thief_talents/1
  # GET /api/v1/thief_talents/1.json
  def show
    render json: @thief_talent
  end

  # POST /api/v1/thief_talents
  # POST /api/v1/thief_talents.json
  def create
    @thief_talent = ThiefTalent.new(thief_talent_params)

    if @thief_talent.save
      render json: @thief_talent, status: :created, location: @thief_talent
    else
      render json: @thief_talent.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/thief_talents/1
  # PATCH/PUT /api/v1/thief_talents/1.json
  def update
    @thief_talent = ThiefTalent.find(params[:id])

    if @thief_talent.update(thief_talent_params)
      head :no_content
    else
      render json: @thief_talent.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/thief_talents/1
  # DELETE /api/v1/thief_talents/1.json
  def destroy
    @thief_talent.destroy

    head :no_content
  end

  private

    def set_thief_talent
      @thief_talent = ThiefTalent.find(params[:id])
    end

    def thief_talent_params
      params.require(:thief_talent).permit(:level, :lockpick, :find_traps, :climb, :silent_movement, :stealth, :pickpocket, :hear_noises, :backstab)
    end
end
