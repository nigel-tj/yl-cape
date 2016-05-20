class Mailer < ApplicationMailer
  default from: "info@redvillage.co.za"
  def test_welcome_email(user)
    @user = user
    @url = "test.redvillage.co.za"
    mail(to: @user.email, subject: "Welcome email test")
  end
end
