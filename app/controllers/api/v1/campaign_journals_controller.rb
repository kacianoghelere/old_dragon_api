class API::V1::CampaignJournalsController < ApplicationController
  before_action :set_campaign, only: [:create, :destroy, :index, :show, :update]
  before_action :set_journal,  only: [:show, :destroy, :update]

  # GET campaigns/abc111def22/journals
  def index
    if @campaign
      @journals = @campaign.journals
      render json: @journals
    else
      render json: @journals.errors, status: :unprocessable_entity
    end
  end

  # GET campaigns/abc111def22/journals/1
  def show
    if @campaign
      render json: @journal
    else
      render json: @journal.errors, status: :unprocessable_entity
    end
  end

  # POST campaigns/abc111def22/journals
  def create
    @journal = CampaignJournal.new(journal_params)
    if is_dungeon_master?
      @journal.campaign = @campaign
      if @journal.save
        render json: @journal, status: :created
      else
        render json: @journal.errors, status: :unprocessable_entity
      end
    else
      render json: @journal.errors, status: :forbidden
    end
  end

  # PATCH/PUT campaigns/abc111def22/journals/1
  def update
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

  # DELETE campaigns/abc111def22/journals/1
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
      @campaign = Campaign.find_by(uuid: params[:campaign_id])
    end

    def set_journal
      @journal = CampaignJournal.find_by(id: params[:id])
    end

    def journal_params
      params.require(:campaign_journal).permit(:id, :description, :active)
    end
end