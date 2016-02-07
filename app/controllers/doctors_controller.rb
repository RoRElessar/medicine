class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def show
  end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      respond_to do |format|
        format.json { render json: @doctor }
        # format.html
      end
    end
  end

  def update
  end

  def edit
    @doctor = Doctor.find(params[:id])
    redirect_to root_path unless current_company.id == @doctor.company.id
  end

  private

  def doctor_params
    params.require(:doctor).permit(:name, :second_name, :surname, :password, :email).merge(company_id: current_company.id)
  end
end



