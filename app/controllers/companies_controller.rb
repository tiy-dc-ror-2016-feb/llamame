class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def show
  end

  def edit
  end

  def create
    @company = Company.create(company_params)
    redirect_to company_path(id: @company.id)
  end

  def update
    @company.update(company_params)
    redirect_to company_path(id: @company.id)
  end

  def destroy
    @company.destroy!
    redirect_to companies_path
  end

  private

  def company_params
    params.require(:company).permit(:notes, :salesperson)
  end

  def set_company
    @company = Company.find(params[:id])
  end
end
