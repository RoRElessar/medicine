class DoctorMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.doctor_mailer.new_doctor_notification.subject
  #
  def new_doctor_notification(email, password)
    @email = email
    @password = password
    # mail to: "jipebed@gmail.com"
    mail to: @email
  end

  def new_record_notification(email, time , doctor)
    @email = email
    @time = time
    @doctor = doctor
    # mail to: "jipebed@gmail.com"
    mail to: @email
  end



  def company_notification(email, password, company_email)
    @email = email
    @password = password
    # mail to: "jipebed@gmail.com"
    mail to: company_email
  end
end
