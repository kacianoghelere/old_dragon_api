class API::V1::AlignmentsController  < ApplicationController
  before_filter :authenticate_request!
  before_action :set_alignment, only: [:show, :update, :destroy]

  # GET /alignments
  # GET /alignments.json
  def index
    @alignments = Alignment.all

    render json: @alignments
  end

  # GET /alignments/1
  # GET /alignments/1.json
  def show
    render json: @alignment
  end

  # POST /alignments
  # POST /alignments.json
  def create
    @alignment = Alignment.new(alignment_params)

    if @alignment.save
      render json: @alignment, status: :created, location: @alignment
    else
      render json: @alignment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /alignments/1
  # PATCH/PUT /alignments/1.json
  def update
    @alignment = Alignment.find(params[:id])

    if @alignment.update(alignment_params)
      head :no_content
    else
      render json: @alignment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /alignments/1
  # DELETE /alignments/1.json
  def destroy
    @alignment.destroy

    head :no_content
  end

  private

    def set_alignment
      @alignment = Alignment.find(params[:id])
    end

    def alignment_params
      params.require(:alignment).permit(:name)
    end
end
