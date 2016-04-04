# Preview all emails at http://localhost:3000/rails/mailers/doctor_mailer
class DoctorMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/doctor_mailer/new_doctor_notification
  def new_doctor_notification
    DoctorMailer.new_doctor_notification
  end

end
