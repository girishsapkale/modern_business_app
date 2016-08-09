class Message < ActiveRecord::Base
  # attr_accessor :name, :email, :body, :phone

	belongs_to :user

  

	# validates :name, presence: true
	# validates :email, presence: true
	# validates :body, presence: true
	# validates :phone, presence: true
	               
end
