class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
   @company = Company.find(params[:id])
  end
    def doctors
  end
  def schedule
  end
end
