class API::V1::PageCategoriesController < ApplicationController
  before_filter :authenticate_request!
  before_action :set_page_category, only: [:show]

  # GET /page_categories
  # GET /page_categories.json
  def index
    @page_categories = PageCategory.all

    render json: @page_categories
  end

  # GET /page_categories/1
  # GET /page_categories/1.json
  def show
    render json: @page_category
  end

  private

    def set_page_category
      @page_category = PageCategory.find(params[:id])
    end

    def page_category_params
      params[:page_category]
    end
end
