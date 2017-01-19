class API::V1::RolesController < ApplicationController
  before_action :set_role, only: [:show, :update, :destroy]

  # GET /api/v1/roles
  # GET /api/v1/roles.json
  def index
    @roles = Role.all

    render json: @roles
  end

  # GET /api/v1/roles/1
  # GET /api/v1/roles/1.json
  def show
    render json: @role
  end

  # POST /api/v1/roles
  # POST /api/v1/roles.json
  def create
    @role = Role.new(role_params)

    if @role.save
      render json: @role, status: :created, location: @role
    else
      render json: @role.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/roles/1
  # PATCH/PUT /api/v1/roles/1.json
  def update
    @role = Role.find(params[:id])

    if @role.update(role_params)
      head :no_content
    else
      render json: @role.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/roles/1
  # DELETE /api/v1/roles/1.json
  def destroy
    @role.destroy

    head :no_content
  end

  private

    def set_role
      @role = Role.find(params[:id])
    end

    def role_params
      params.require(:role).permit(:name, :admin)
    end
end
