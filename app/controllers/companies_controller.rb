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

  def destroy
    @companies = Company.find(params[:id])
    @companies.destroy
    render json: {status: "Successfully destroyed", data: @companies}, status: :ok
  end

  def update
    @companies = Company.find(params[:id])
    if @companies.update_attributes(company_params)
      render json: @companies
    else
      render json: @companies.errors, status: :unprocessable_entity

    end
  end

  private

  def company_params
    params.require(:company).permit(:name, :description, :start_date, :country)
  end
end
