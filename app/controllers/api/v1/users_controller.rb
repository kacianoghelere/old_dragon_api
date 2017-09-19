class API::V1::UsersController  < ApplicationController
  before_filter :authenticate_request!, only: [:show, :update, :destroy]
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all

    render json: @users, each_serializer: UsersSerializer
  end

  # GET /users/1
  # GET /users/1.json
  def show
    render json: @user, include: ['*', characters: [:class, :race]]
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    @user.role = Role.find_by(admin: false)

    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      head :no_content
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def find_invitable
    campaign_members = Campaign.find(params[:campaign_id]).find_users
    users_invited = CampaignInvitation.find_invited_users(params[:campaign_id])
    unavailable_ids = campaign_members + users_invited
    @users = User.where.not(id: unavailable_ids)
    render json: @users, each_serializer: SimpleUserSerializer
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy

    head :no_content
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :user_code, :password, 
        :password_confirmation, :last_login, :email, :role_id)
    end
end
