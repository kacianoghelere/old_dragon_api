class API::V1::RoleAccessesController < ApplicationController
  before_action :set_role_access, only: [:show, :update, :destroy]

  # GET /api/v1/role_accesses
  # GET /api/v1/role_accesses.json
  def index
    @role_accesses = RoleAccess.all

    render json: @role_accesses
  end

  # GET /api/v1/role_accesses/1
  # GET /api/v1/role_accesses/1.json
  def show
    render json: @role_access
  end

  # POST /api/v1/role_accesses
  # POST /api/v1/role_accesses.json
  def create
    @role_access = RoleAccess.new(role_access_params)

    if @role_access.save
      render json: @role_access, status: :created, location: @role_access
    else
      render json: @role_access.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/role_accesses/1
  # PATCH/PUT /api/v1/role_accesses/1.json
  def update
    @role_access = RoleAccess.find(params[:id])

    if @role_access.update(role_access_params)
      head :no_content
    else
      render json: @role_access.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/role_accesses/1
  # DELETE /api/v1/role_accesses/1.json
  def destroy
    @role_access.destroy

    head :no_content
  end

  private

    def set_role_access
      @role_access = RoleAccess.find(params[:id])
    end

    def role_access_params
      params.require(:role_access).permit(:id_menu_item, :role_id)
    end
end
