class CompaniesController < ApplicationController
  def index
    @companies = Company.all
    render json: @companies
  end

  def show
    @companies = Company.find(params[:id])
    render json: @companies
  end

  def create
    @companies = Company.new(company_params)
    if @companies.save
      render json: @companies
    else
      render json: @companies.errors
    end
  end

  private

  def company_params
    params.require(:company).permit(:name, :description, :start_date, :country)
  end
end
