class API::V1::CampaignWikiPagesController < ApplicationController
  before_action :set_campaign_wiki_page, only: [:show, :destroy]

  # GET 1/campaign_wiki_pages
  # GET 1/campaign_wiki_pages.json
  def index
    campaign = Campaign.find_by(id: params[:campaign_id])
    if campaign
      @campaign_wiki_pages = campaign.pages
    else
      @campaign_wiki_pages = []
    end

    render json: @campaign_wiki_pages
  end

  # GET 1/campaign_wiki_pages/1
  # GET 1/campaign_wiki_pages/1.json
  def show
    render json: @campaign_wiki_page
  end

  # POST 1/campaign_wiki_pages
  # POST 1/campaign_wiki_pages.json
  def create
    @campaign_wiki_page = CampaignWikiPage.new(campaign_wiki_page_params)

    if @campaign_wiki_page.save
      render json: @campaign_wiki_page, status: :created
    else
      render json: @campaign_wiki_page.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT 1/campaign_wiki_pages/1
  # PATCH/PUT 1/campaign_wiki_pages/1.json
  def update
    @campaign_wiki_page = CampaignWikiPage.find_by(id: params[:id])
    if @campaign_wiki_page.update(campaign_wiki_page_params)
      head :no_content
    else
      render json: @campaign_wiki_page.errors, status: :unprocessable_entity
    end
  end

  # DELETE 1/campaign_wiki_pages/1
  # DELETE 1/campaign_wiki_pages/1.json
  def destroy
    @campaign_wiki_page.destroy

    head :no_content
  end

  private

    def set_campaign_wiki_page
      @campaign_wiki_page = CampaignWikiPage.find_by(wiki_name: params[:id])
    end

    def campaign_wiki_page_params
      params.require(:campaign_wiki_page)
        .permit(:title, :body, :picture, :campaign_id)
    end
end
