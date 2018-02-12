class API::V1::CampaignsController  < ApplicationController
  before_filter :authenticate_request!
  before_action :set_campaign, only: [:show, :destroy]

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
      '*',
      characters: [
        :class,
        :race,
        :player,
        status: [:alignment]
      ]
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
    @campaign = Campaign.find_by(id: params[:id])
    if @campaign.update(update_campaign_params)
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
      @campaign = Campaign.find_by("id = :id OR uuid = :id", id: params[:id])
    end

    def create_campaign_params
      params.require(:campaign).permit(:title, :description, :picture,
        :start_date, :user_id)
    end

    def update_campaign_params
      params.require(:campaign).permit(:title, :description, :picture,
        :conclusion_date, :user_id)
    end
end
