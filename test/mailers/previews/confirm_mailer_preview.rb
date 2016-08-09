# Preview all emails at http://localhost:3000/rails/mailers/confirm_mailer
class ConfirmMailerPreview < ActionMailer::Preview

	# Preview all emails at http://localhost:3000/rails/mailers/example_mailer
  
	def sample_mail_preview
    ExampleMailer.sample_email(User.first)
  end
end


	