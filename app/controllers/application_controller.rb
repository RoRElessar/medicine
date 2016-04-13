class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_devise_permitted_parameters, if: :devise_controller?

  def current_doctor
    current_doctor ||= Doctor.find(session[:doctor_id]) if session[:doctor_id]
  end

  protected

  def configure_devise_permitted_parameters
    registration_params = [:name, :patronymic, :surname, :address, :phone, :description, :email, :image, :password,
                           :password_confirmation, :lat, :lng, :activity]

    if params[:action] == 'update'
      devise_parameter_sanitizer.for(:account_update) {
          |u| u.permit(registration_params << :current_password)
      }
    elsif params[:action] == 'create'
      devise_parameter_sanitizer.for(:sign_up) {
          |u| u.permit(registration_params)
      }
    end
  end
end
