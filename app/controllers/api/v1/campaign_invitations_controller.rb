class API::V1::CampaignInvitationsController < ApplicationController
  before_action :set_campaign, only: [:create]
  before_action :set_campaign_invitation, only: [:update, :destroy]

  def invitations
    @campaign_invitations = CampaignInvitation
      .where(user_id: params[:user_id], completed: false)

    render json: @campaign_invitations
  end

  def create
    @campaign_invitation = CampaignInvitation.new(invitate_params)
    @campaign_invitation.message = "Você recebeu um convite para participar da "\
      "campanha \"#{@campaign.title}\". Para aceitar, basta escolher um "\
      "personagem e clicar em aceitar"

    if @campaign_invitation.save
      render json: @campaign_invitation, status: :created
    else
      render json: @campaign_invitation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /campaign_invitations/1
  # PATCH/PUT /campaign_invitations/1.json
  def update
    @campaign_invitation = CampaignInvitation.find(params[:id])
    @campaign_invitation.completed = true

    if @campaign_invitation.update(invitate_update_params)
      user_character = @campaign_invitation.user.characters.first
      @campaign_invitation.campaign.characters.push(user_character)
      head :no_content
    else
      render json: @campaign_invitation.errors, status: :unprocessable_entity
    end
  end

  # # DELETE /campaign_invitations/1
  # # DELETE /campaign_invitations/1.json
  # def destroy
  #   @campaign_invitation.destroy

  #   head :no_content
  # end

  private

    def invitate_params
      params.require(:campaign_invitation).permit(:campaign_id, :user_id)
    end

    def invitate_update_params
      params.require(:campaign_invitation).permit(:accepted, :denied)
    end

    def set_campaign
      @campaign = Campaign.find(invitate_params[:campaign_id])
    end

    def set_campaign_invitation
      @campaign_invitation = CampaignInvitation.find(params[:id])
    end
end
