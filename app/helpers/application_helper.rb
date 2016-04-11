module ApplicationHelper
  def current_doctor
    current_doctor ||= Doctor.find(session[:doctor_id]) if session[:doctor_id]
  end
end
