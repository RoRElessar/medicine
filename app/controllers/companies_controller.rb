class CompaniesController < ApplicationController
  def index
    @companies = params[:activity].present? ? Company.where('lower(activity) LIKE ?', "%#{params[:activity]}%") : Company.all
  end

  def show
    @company = Company.find(params[:id])
  end

  def doctors
  end

  def schedule
    @company = current_company
    @doctors = @company.doctors
  end
end
