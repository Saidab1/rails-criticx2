class CompaniesController < ApplicationController
  def index
    @companies = Company.all
    render json: @companies
  end

  def show 
    @companies = Company.find(params[:id])
    render json: @companies
  end 
end
