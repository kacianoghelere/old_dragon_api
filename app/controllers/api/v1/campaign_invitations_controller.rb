class API::V1::CampaignInvitationsController < ApplicationController
  before_action :set_campaign, only: [:create]
  before_action :set_campaign_invitation, only: [:show, :update, :destroy]

  # GET /campaign_invitations
  # GET /campaign_invitations.json
  def index
    @campaign_invitations = CampaignInvitation.all

    render json: @campaign_invitations
  end

  def invitations
    @campaign_invitations = CampaignInvitation
      .where(user_id: params[:user_id], completed: false)

    render json: @campaign_invitations
  end

  # GET /campaign_invitations/1
  # GET /campaign_invitations/1.json
  def show
    render json: @campaign_invitation
  end

  def create
    @campaign_invitation = CampaignInvitation.new(invitate_params)
    @campaign_invitation.message = "Você recebeu um convite para participar da "\
      "campanha #{@campaign.title}. Para aceitar, basta escolher um personagem "\
      "e clicar em aceitar"

    if @campaign_invitation.save
      render json: @campaign_invitation, status: :created
    else
      render json: @campaign_invitation.errors, status: :unprocessable_entity
    end
  end

  # # PATCH/PUT /campaign_invitations/1
  # # PATCH/PUT /campaign_invitations/1.json
  # def update
  #   @campaign_invitation = CampaignInvitation.find(params[:id])

  #   if @campaign_invitation.update(campaign_invitation_params)
  #     head :no_content
  #   else
  #     render json: @campaign_invitation.errors, status: :unprocessable_entity
  #   end
  # end

  # # DELETE /campaign_invitations/1
  # # DELETE /campaign_invitations/1.json
  # def destroy
  #   @campaign_invitation.destroy

  #   head :no_content
  # end

  private

    def set_campaign
      @campaign = Campaign.find(invitate_params[:campaign_id])
    end

    def set_campaign_invitation
      @campaign_invitation = CampaignInvitation.find(params[:id])
    end

    def invitate_params
      params.require(:campaign_invitation).permit(:campaign_id, :user_id)
    end
end
