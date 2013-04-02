class FeedbackMailer < ActionMailer::Base
  default from: "no-reply@example.com"

  def welcome_email(user)
  	@user = user
  	email_with_name = "#{@user.name} <#{@user.email}>"
    @url = "" #website main page
  	mail(:to => email_with_name, :subject =>"Welcome #{@user.name} to the salon app")
  end

  def feedback_email(appointment)
  	@appointment = appointment
  	@url = "http://someaddress.com/feedback?id=#{appointment.userID}"#unknown value
  	mail(:to => appointment.user.email, :subject =>"Feedback from your last appointment")
  end
end
