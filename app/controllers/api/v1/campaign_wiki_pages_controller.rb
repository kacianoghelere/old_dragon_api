class API::V1::CampaignWikiPagesController < ApplicationController
  before_filter :authenticate_request!
  before_action :set_campaign,           only: [:index, :update, :show]
  before_action :set_campaign_wiki_page, only: [:show, :destroy]

  # GET campaigns/abc111def22/campaign_wiki_pages
  def index
    if @campaign
      if is_dungeon_master?
        @campaign_wiki_pages = @campaign.pages
      else
        @campaign_wiki_pages = @campaign.pages.where(dm_only: false)
      end
      render json: @campaign_wiki_pages
    else
      render json: @campaign_wiki_pages.errors, status: :unprocessable_entity
    end
  end

  # GET campaigns/abc111def22/campaign_wiki_pages/1
  def show
    if !!@campaign && !!@campaign_wiki_page
      if !is_dm_only? || (is_dm_only? && is_dungeon_master?)
        render json: @campaign_wiki_page
      else
        render json: @campaign_wiki_page.errors, status: :forbidden
      end
    else
      render json: @campaign_wiki_page.errors, status: :unprocessable_entity
    end
  end

  # POST campaigns/abc111def22/campaign_wiki_pages
  def create
    @campaign_wiki_page = CampaignWikiPage.new(campaign_wiki_page_params)
    if @campaign
      @campaign_invitation.campaign = @campaign
      if @campaign_wiki_page.save
        render json: @campaign_wiki_page, status: :created
      else
        render json: @campaign_wiki_page.errors, status: :unprocessable_entity
      end
    else
      render json: @campaign_wiki_page.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT campaigns/abc111def22/campaign_wiki_pages/1
  def update
    @campaign_wiki_page = CampaignWikiPage.find_by(id: params[:id])
    if is_dungeon_master?
      if @campaign_wiki_page.update(campaign_wiki_page_params)
        render json: @campaign_wiki_page, status: :accepted
      else
        render json: @campaign_wiki_page.errors, status: :unprocessable_entity
      end
    else
      render json: @campaign_wiki_page.errors, status: :forbidden
    end
  end

  # DELETE campaigns/abc111def22/campaign_wiki_pages/1
  def destroy
    @campaign_wiki_page.destroy

    head :no_content
  end

  private

    # verifica se a página é de acesso exclusivo do narrador da campanha
    def is_dm_only?
      @campaign_wiki_page.dm_only
    end

    # verifica se o usuário atual é o narrador da campanha
    def is_dungeon_master?
      @campaign.user.id === get_current_user.id
    end

    def set_campaign
      @campaign = Campaign.find_by(uuid: params[:campaign_id])
    end

    def set_campaign_wiki_page
      @campaign_wiki_page = CampaignWikiPage.find_by(wiki_name: params[:id])
    end

    def campaign_wiki_page_params
      params.require(:campaign_wiki_page)
        .permit(:title, :body, :picture, :dm_only, :wiki_category_id)
    end
end
