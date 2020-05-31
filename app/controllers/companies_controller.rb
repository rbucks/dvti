class CompaniesController < ApplicationController
  def index
    @companies = Company.order(:slug).page params[:page]
  end

  def show

  end

  def search

  end
end
