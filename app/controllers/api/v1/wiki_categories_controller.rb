class API::V1::WikiCategoriesController < ApplicationController
  before_filter :authenticate_request!
  before_action :set_wiki_category, only: [:show]

  # GET /wiki_categories
  # GET /wiki_categories.json
  def index
    @wiki_categories = WikiCategory.all

    render json: @wiki_categories
  end

  # GET /wiki_categories/1
  # GET /wiki_categories/1.json
  def show
    render json: @wiki_category
  end

  private

    def set_wiki_category
      @wiki_category = WikiCategory.find(params[:id])
    end

    def wiki_category_params
      params[:wiki_category]
    end
end
