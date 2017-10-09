class API::V1::CampaignMapsController < ApplicationController
  before_filter :authenticate_request!
  before_action :set_campaign, only: [:create, :index, :show, :update]
  before_action :set_map,      only: [:show, :update, :destroy]

  # GET campaigns/1/maps
  # GET campaigns/1/maps.json
  def index
    if @campaign
      @maps = @campaign.maps
      render json: @maps
    else
      render json: @maps.errors, status: :unprocessable_entity
    end
  end

  # GET campaigns/1/maps/1
  # GET campaigns/1/maps/1.json
  def show
    if @campaign
      render json: @map
    else
      render json: @map.errors, status: :unprocessable_entity
    end
  end

  # POST campaigns/1/maps
  # POST campaigns/1/maps.json
  def create
    @map = CampaignMap.new(map_params)

    if is_dungeon_master?
      if @map.save
        render json: @map, status: :created
      else
        render json: @map.errors, status: :unprocessable_entity
      end
    else
      render json: @map.errors, status: :forbidden
    end
  end

  # PATCH/PUT campaigns/1/maps/1
  # PATCH/PUT campaigns/1/maps/1.json
  def update
    if is_dungeon_master?
      if @map.update(map_params)
        head :no_content
      else
        render json: @map.errors, status: :unprocessable_entity
      end
    else
      render json: @map.errors, status: :forbidden
    end
  end

  # DELETE campaigns/1/maps/1
  # DELETE campaigns/1/maps/1.json
  def destroy
    @map.destroy

    head :no_content
  end

  private

    # verifica se o usuário atual é o narrador da campanha
    def is_dungeon_master?
      @campaign.user.id === get_current_user.id
    end

    def set_campaign
      @campaign = Campaign.find_by(id: params[:campaign_id])
    end

    def set_map
      @map = CampaignMap.find_by(id: params[:id])
    end

    def map_params
      params.require(:campaign_map).permit(:id, :description, :url, :active,
        :campaign_id)
    end
end