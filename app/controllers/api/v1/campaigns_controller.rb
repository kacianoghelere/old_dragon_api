class API::V1::CampaignsController  < ApplicationController
  before_filter :authenticate_request!
  before_action :set_campaign, only: [:show, :update, :destroy]
  before_action :delete_associations, only: [:update]

  # GET /campaigns
  # GET /campaigns.json
  def index
    if params[:user_id]
      @campaigns = Campaign.where(user_id: params[:user_id])
    else
      @campaigns = Campaign.all
    end
    render json: @campaigns
  end

  # GET /campaigns/1
  # GET /campaigns/1.json
  def show
    render json: @campaign, include: [
      '*', characters: [:class, :race, :player, status: [:alignment]]
    ]
  end

  # POST /campaigns
  # POST /campaigns.json
  def create
    @campaign = Campaign.new(create_campaign_params)
    @campaign.start_date = DateTime.now
    @campaign.user = get_current_user
    if @campaign.save
      render json: @campaign, status: :created
    else
      render json: @campaign.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /campaigns/1
  # PATCH/PUT /campaigns/1.json
  def update
    if @campaign.update(update_campaign_params)
      @campaign.journals.create(create_campaign_journals_params)
      @campaign.maps.create(create_campaign_maps_params)
      @campaign.notes.create(create_campaign_notes_params)
      @campaign.add_members(create_campaign_members_params)
      head :no_content
    else
      render json: @campaign.errors, status: :unprocessable_entity
    end
  end

  # DELETE /campaigns/1
  # DELETE /campaigns/1.json
  def destroy
    @campaign.destroy

    head :no_content
  end

  private

    def set_campaign
      @campaign = Campaign.find_by(id: params[:id])
    end

    def create_campaign_params
      params.require(:campaign).permit(
        :title, :description, :picture, :start_date, :conclusion_date, :user_id,
        journals_attributes: [:title, :description],
        maps_attributes: [:url, :description],
        notes_attributes: [:description, :dm_only])
    end

    def update_campaign_params
      params.require(:campaign).permit(:id, :title, :description, :picture,
        :conclusion_date, :user_id)
    end

    def delete_associations
      @campaign.journals.destroy_all
      @campaign.maps.destroy_all
      @campaign.notes.destroy_all
      @campaign.campaign_members.destroy_all
    end

    # Retorna parametros de construção de diários de campanha
    def create_campaign_journals_params
      deep_symbolize_keys(params[:campaign][:journals_attributes])
    end

    # Retorna parametros de construção de mapas de campanha
    def create_campaign_maps_params
      deep_symbolize_keys(params[:campaign][:maps_attributes])
    end

    # Retorna parametros de construção de notas de campanha
    def create_campaign_notes_params
      deep_symbolize_keys(params[:campaign][:notes_attributes])
    end

    # Retorna parametros de criação de vinculos com personagens
    def create_campaign_members_params
      deep_symbolize_keys(params[:campaign][:characters])
    end
end
