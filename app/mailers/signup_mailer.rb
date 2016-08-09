class SignupMailer < ApplicationMailer
  
    default from: "admin@example.com"

  def message_mail(message)
    @message = message 
    mail(to: "anilkumar@mobikasa.com", cc: @message.email, subject: "Admin! We got a new message from #{@message.name}.")
  end

end
