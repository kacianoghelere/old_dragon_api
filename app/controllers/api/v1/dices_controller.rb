class API::V1::DicesController < ApplicationController
  before_action :set_dice, only: [:show, :update, :destroy]

  # GET /api/v1/dices
  # GET /api/v1/dices.json
  def index
    @dices = Dice.all

    render json: @dices
  end

  # GET /api/v1/dices/1
  # GET /api/v1/dices/1.json
  def show
    render json: @dice
  end

  # POST /api/v1/dices
  # POST /api/v1/dices.json
  def create
    @dice = Dice.new(dice_params)

    if @dice.save
      render json: @dice, status: :created, location: @dice
    else
      render json: @dice.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/dices/1
  # PATCH/PUT /api/v1/dices/1.json
  def update
    @dice = Dice.find(params[:id])

    if @dice.update(dice_params)
      head :no_content
    else
      render json: @dice.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/dices/1
  # DELETE /api/v1/dices/1.json
  def destroy
    @dice.destroy

    head :no_content
  end

  private

    def set_dice
      @dice = Dice.find(params[:id])
    end

    def dice_params
      params.require(:dice).permit(:name)
    end
end
