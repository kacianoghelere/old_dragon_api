class API::V1::TraitsController  < ApplicationController

  before_filter :authenticate_request!
  before_action :set_trait, only: [:show, :update, :destroy]

  # GET /traits
  # GET /traits.json
  def index
    @traits = Trait.all

    render json: @traits
  end

  # GET /traits/1
  # GET /traits/1.json
  def show
    render json: @trait
  end

  # POST /traits
  # POST /traits.json
  def create
    @trait = Trait.new(trait_params)

    if @trait.save
      render json: @trait, status: :created, location: @trait
    else
      render json: @trait.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /traits/1
  # PATCH/PUT /traits/1.json
  def update
    @trait = Trait.find(params[:id])

    if @trait.update(trait_params)
      head :no_content
    else
      render json: @trait.errors, status: :unprocessable_entity
    end
  end

  # DELETE /traits/1
  # DELETE /traits/1.json
  def destroy
    @trait.destroy

    head :no_content
  end

  private

    def set_trait
      @trait = Trait.find(params[:id])
    end

    def trait_params
      params.require(:trait).permit(:name, :description, :trait_type_id, :user_id)
    end
end
