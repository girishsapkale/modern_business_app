class ConfirmMailer < ApplicationMailer
  default from: "admin@example.com"

  def confirm_email(user)
    @user = user
    mail(to: @user.email, subject: 'Sample Email')
  end


end
