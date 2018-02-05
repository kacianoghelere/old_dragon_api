class API::V1::CampaignNotesController < ApplicationController
  before_filter :authenticate_request!
  before_action :set_campaign, only: [:create, :index, :show, :update]
  before_action :set_note,     only: [:show, :destroy, :update]

  # GET campaigns/abc111def22/notes
  # GET campaigns/abc111def22/notes.json
  def index
    if @campaign
      if is_dungeon_master?
        @notes = @campaign.notes
      else
        @notes = @campaign.notes.where(dm_only: false)
      end
      render json: @notes
    else
      render json: @notes.errors, status: :unprocessable_entity
    end
  end

  # GET campaigns/abc111def22/notes/1
  # GET campaigns/abc111def22/notes/1.json
  def show
    if @campaign
      if !is_dm_only? || (is_dm_only? && is_dungeon_master?)
        render json: @note
      else
        render json: @note.errors, status: :forbidden
      end
    else
      render json: @note.errors, status: :unprocessable_entity
    end
  end

  # POST campaigns/abc111def22/notes
  # POST campaigns/abc111def22/notes.json
  def create
    @note = CampaignNote.new(note_params)
    if is_dungeon_master?
      @note.campaign = @campaign
      if @note.save
        render json: @note, status: :created
      else
        render json: @note.errors, status: :unprocessable_entity
      end
    else
      render json: @note.errors, status: :forbidden
    end
  end

  # PATCH/PUT campaigns/abc111def22/notes/1
  # PATCH/PUT campaigns/abc111def22/notes/1.json
  def update
    if is_dungeon_master?
      if @note.update(note_params)
        head :no_content
      else
        render json: @note.errors, status: :unprocessable_entity
      end
    else
      render json: @note.errors, status: :forbidden
    end
  end

  # DELETE campaigns/abc111def22/notes/1
  # DELETE campaigns/abc111def22/notes/1.json
  def destroy
    @note.destroy

    head :no_content
  end

  private

    # verifica se a página é de acesso exclusivo do narrador da campanha
    def is_dm_only?
      @note.dm_only
    end

    # verifica se o usuário atual é o narrador da campanha
    def is_dungeon_master?
      @campaign.user.id === get_current_user.id
    end

    def set_campaign
      @campaign = Campaign.find_by(uuid: params[:campaign_id])
    end

    def set_note
      @note = CampaignNote.find_by(id: params[:id])
    end

    def note_params
      params.require(:campaign_note).permit(:id, :description, :dm_only, :active)
    end
end
