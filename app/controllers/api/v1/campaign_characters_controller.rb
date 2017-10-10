class API::V1::CampaignCharactersController < ApplicationController
  before_filter :authenticate_request!
  before_action :set_campaign, only: [:index, :create]

  # GET /campaign/1/characters
  # GET /campaign/1/characters.json
  def index
    if @campaign
      if is_dungeon_master?
        @characters = @campaign.characters
      else
        @characters = @campaign.characters
      end
      render json: @characters
    else
      render json: @characters.errors, status: :unprocessable_entity
    end
  end

  # POST /campaign/1/characters
  # POST /campaign/1/characters.json
  def create
    if is_dungeon_master?
      ActiveRecord::Base.transaction do
        @campaign.campaign_members.destroy_all
        if @campaign.campaign_members.create(create_campaign_characters_params)
          render json: @campaign.characters, status: :created
        else
          render json: @campaign.characters.errors, status: :unprocessable_entity
        end
      end
    else
      render json: @campaign.characters.errors, status: :forbidden
    end
  end

  private

    # verifica se o usuário atual é o narrador da campanha
    def is_dungeon_master?
      @campaign.user.id === get_current_user.id
    end

    # Retorna parametros de criação de vinculos com personagens
    def create_campaign_characters_params
      params.permit(characters: [:character_id])[:characters]
    end

    def set_campaign
      @campaign = Campaign.find_by(id: params[:campaign_id])
    end
end
