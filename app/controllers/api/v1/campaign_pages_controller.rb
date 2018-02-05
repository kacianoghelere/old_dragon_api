class API::V1::CampaignPagesController < ApplicationController
  before_filter :authenticate_request!
  before_action :set_campaign,      only: [:index, :create, :update, :show]
  before_action :set_campaign_page, only: [:show, :destroy]
  before_action :set_page_category, only: [:create, :update]

  # GET campaigns/abc111def22/pages
  def index
    if @campaign
      if is_dungeon_master?
        @campaign_pages = @campaign.pages
      else
        @campaign_pages = @campaign.pages.where(dm_only: false)
      end
      render json: @campaign_pages
    else
      render json: @campaign_pages.errors, status: :unprocessable_entity
    end
  end

  # GET campaigns/abc111def22/pages/1
  def show
    if !!@campaign && !!@campaign_page
      if !is_dm_only? || (is_dm_only? && is_dungeon_master?)
        render json: @campaign_page
      else
        render json: @campaign_page.errors, status: :forbidden
      end
    else
      render json: @campaign_page.errors, status: :unprocessable_entity
    end
  end

  # POST campaigns/abc111def22/pages
  def create
    if @campaign
      @campaign_page = @campaign.pages.build(campaign_page_params)
      @campaign_page.page_category = @page_category
      if @campaign_page.save
        render json: @campaign_page, status: :created
      else
        render json: @campaign_page.errors, status: :unprocessable_entity
      end
    else
      render json: {message: 'Campanha não encontrada'}, status: :unprocessable_entity
    end
  end

  # PATCH/PUT campaigns/abc111def22/pages/1
  def update
    if @campaign
      @campaign_page = CampaignPage.find_by(id: params[:id])
      if is_dungeon_master?
        @campaign_page.page_category = @page_category
        if @campaign_page.update(campaign_page_params)
          render json: @campaign_page, status: :accepted
        else
          render json: @campaign_page.errors, status: :unprocessable_entity
        end
      else
        render json: {message: 'Função exclusiva do narrador'}, status: :forbidden
      end
    else
      render json: {message: 'Campanha não encontrada'}, status: :unprocessable_entity
    end
  end

  # DELETE campaigns/abc111def22/pages/1
  def destroy
    @campaign_page.destroy

    head :no_content
  end

  private

    # verifica se a página é de acesso exclusivo do narrador da campanha
    def is_dm_only?
      @campaign_page.dm_only
    end

    # verifica se o usuário atual é o narrador da campanha
    def is_dungeon_master?
      @campaign.user.id === get_current_user.id
    end

    def set_campaign
      @campaign = Campaign.find_by(uuid: params[:campaign_id])
    end

    def set_campaign_page
      @campaign_page = CampaignPage.find_by(flat_name: params[:id])
    end

    def set_page_category
      category_name = params[:campaign_page][:page_category]
      @page_category = PageCategory.find_by(flat_name: category_name)
    end

    def campaign_page_params
      params.require(:campaign_page).permit(:title, :body, :picture, :dm_only)
    end
end
