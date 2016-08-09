class MessagesController < ApplicationController

	def new
		@message	=	Message.new
	end

	def create
		# @message = Message.new(message_params)
		# 		if	@message.save
					
		# 				flash[:success]	=	"Message sent!"					
		# 				redirect_to	root_url

		# 		else
				
		# 			flash[:notice]	=	"Message not sent!"
		# 			render	'welcome/contact'
		# 		end
  @message = Message.new(message_params)


  respond_to do |format|
    if @message.save  

      # Sends email to user when message is created.
      SignupMailer.message_mail(@message).deliver_now

      format.html { redirect_to root_url, notice: '@message was successfully created.' }
      format.json { render :show, status: :created, location: @message }
    else
      format.html { render :new }
      format.json { render json: @message.errors, status: :unprocessable_entity }
    end
  end
	end
	
	def destroy
	end

	private
		def	message_params
				params.require(:message).permit(:title, :name, :email, :body, :phone)
		end
end
