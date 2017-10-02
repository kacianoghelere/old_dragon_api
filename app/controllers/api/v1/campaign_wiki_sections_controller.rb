class API::V1::CampaignWikiSectionsController < ApplicationController
  before_action :set_campaign_wiki_section, only: [:show, :update, :destroy]

  # GET /campaign_wiki_sections
  # GET /campaign_wiki_sections.json
  def index
    @campaign_wiki_sections = CampaignWikiSection.all

    render json: @campaign_wiki_sections
  end

  # GET /campaign_wiki_sections/1
  # GET /campaign_wiki_sections/1.json
  def show
    render json: @campaign_wiki_section
  end

  # POST /campaign_wiki_sections
  # POST /campaign_wiki_sections.json
  def create
    @campaign_wiki_section = CampaignWikiSection.new(campaign_wiki_section_params)

    if @campaign_wiki_section.save
      render json: @campaign_wiki_section, status: :created, location: @campaign_wiki_section
    else
      render json: @campaign_wiki_section.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /campaign_wiki_sections/1
  # PATCH/PUT /campaign_wiki_sections/1.json
  def update
    @campaign_wiki_section = CampaignWikiSection.find(params[:id])

    if @campaign_wiki_section.update(campaign_wiki_section_params)
      head :no_content
    else
      render json: @campaign_wiki_section.errors, status: :unprocessable_entity
    end
  end

  # DELETE /campaign_wiki_sections/1
  # DELETE /campaign_wiki_sections/1.json
  def destroy
    @campaign_wiki_section.destroy

    head :no_content
  end

  private

    def set_campaign_wiki_section
      @campaign_wiki_section = CampaignWikiSection.find(params[:id])
    end

    def campaign_wiki_section_params
      params.require(:campaign_wiki_section).permit(:title, :campaign_wiki_id)
    end
end
