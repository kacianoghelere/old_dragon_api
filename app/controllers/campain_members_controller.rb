class CampainMembersController < ApplicationController
  before_action :set_campain_member, only: [:show, :update, :destroy]

  # GET /campain_members
  # GET /campain_members.json
  def index
    @campain_members = CampainMember.all

    render json: @campain_members
  end

  # GET /campain_members/1
  # GET /campain_members/1.json
  def show
    render json: @campain_member
  end

  # POST /campain_members
  # POST /campain_members.json
  def create
    @campain_member = CampainMember.new(campain_member_params)

    if @campain_member.save
      render json: @campain_member, status: :created, location: @campain_member
    else
      render json: @campain_member.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /campain_members/1
  # PATCH/PUT /campain_members/1.json
  def update
    @campain_member = CampainMember.find(params[:id])

    if @campain_member.update(campain_member_params)
      head :no_content
    else
      render json: @campain_member.errors, status: :unprocessable_entity
    end
  end

  # DELETE /campain_members/1
  # DELETE /campain_members/1.json
  def destroy
    @campain_member.destroy

    head :no_content
  end

  private

    def set_campain_member
      @campain_member = CampainMember.find(params[:id])
    end

    def campain_member_params
      params.require(:campain_member).permit(:campain_id, :character_sheet_id, :idactive)
    end
end
