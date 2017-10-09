class API::V1::CampaignJournalsController < ApplicationController
  before_action :set_campaign, only: [:create, :destroy, :index, :show, :update]
  before_action :set_journal,  only: [:show, :destroy]

  # GET campaigns/1/journals
  # GET campaigns/1/journals.json
  def index
    if @campaign
      @journals = @campaign.journals
      render json: @journals
    else
      render json: @journals.errors, status: :unprocessable_entity
    end
  end

  # GET campaigns/1/journals/1
  # GET campaigns/1/journals/1.json
  def show
    if @campaign
      render json: @journal
    else
      render json: @journal.errors, status: :unprocessable_entity
    end
  end

  # POST campaigns/1/journals
  # POST campaigns/1/journals.json
  def create
    @journal = CampaignJournal.new(journal_params)

    if is_dungeon_master?
      if @journal.save
        render json: @journal, status: :created
      else
        render json: @journal.errors, status: :unprocessable_entity
      end
    else
      render json: @journal.errors, status: :forbidden
    end
  end

  # PATCH/PUT campaigns/1/journals/1
  # PATCH/PUT campaigns/1/journals/1.json
  def update
    @journal = CampaignJournal.find_by(id: params[:id])
    if is_dungeon_master?
      if @journal.update(journal_params)
        head :no_content
      else
        render json: @journal.errors, status: :unprocessable_entity
      end
    else
      render json: @journal.errors, status: :forbidden
    end
  end

  # DELETE campaigns/1/journals/1
  # DELETE campaigns/1/journals/1.json
  def destroy
    @journal.destroy

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

    def set_journal
      @journal = CampaignJournal.find_by(id: params[:id])
    end

    def journal_params
      params.require(:campaign_journal)
        .permit(:id, :description, :active, :campaign_id)
    end
end