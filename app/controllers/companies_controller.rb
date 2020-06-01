class CompaniesController < ApplicationController
  def index
    @companies = Company.order(:slug).page params[:page]
  end

  def show
  end

  def search
    @companies = Company.search_all(params[:q]).order(:slug).page params[:page]
    render "index"
  end
end
