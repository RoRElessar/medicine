require 'test_helper'

class DoctorMailerTest < ActionMailer::TestCase
  test "new_doctor_notification" do
    mail = DoctorMailer.new_doctor_notification
    assert_equal "New doctor notification", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
