class API::V1::CampaignWikiPagesController < ApplicationController
  before_action :set_campaign_wiki_page, only: [:show, :update, :destroy]

  # GET /campaign_wiki_pages
  # GET /campaign_wiki_pages.json
  def index
    @campaign_wiki_pages = CampaignWikiPage.all

    render json: @campaign_wiki_pages
  end

  # GET /campaign_wiki_pages/1
  # GET /campaign_wiki_pages/1.json
  def show
    render json: @campaign_wiki_page
  end

  # POST /campaign_wiki_pages
  # POST /campaign_wiki_pages.json
  def create
    @campaign_wiki_page = CampaignWikiPage.new(campaign_wiki_page_params)

    if @campaign_wiki_page.save
      render json: @campaign_wiki_page, status: :created
    else
      render json: @campaign_wiki_page.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /campaign_wiki_pages/1
  # PATCH/PUT /campaign_wiki_pages/1.json
  def update
    @campaign_wiki_page = CampaignWikiPage.find(params[:id])

    if @campaign_wiki_page.update(campaign_wiki_page_params)
      head :no_content
    else
      render json: @campaign_wiki_page.errors, status: :unprocessable_entity
    end
  end

  # DELETE /campaign_wiki_pages/1
  # DELETE /campaign_wiki_pages/1.json
  def destroy
    @campaign_wiki_page.destroy

    head :no_content
  end

  private

    def set_campaign_wiki_page
      @campaign_wiki_page = CampaignWikiPage.find(params[:id])
    end

    def campaign_wiki_page_params
      params.require(:campaign_wiki_page)
        .permit(:title, :body, :campaign_id)
    end
end
