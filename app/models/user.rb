class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :messages

  #attr_accessor :email, :password

  devise :database_authenticatable, :registerable, :confirmable,
   :lockable, :timeoutable,# :omniauthable,
    :recoverable, :rememberable, :trackable, :validatable


  # def send_devise_notification(notification, *args)
  #   devise_mailer.send(notification, self, *args).deliver_later
  # end

  # validates :email, presence: true, uniqueness: true
  # validates :password, presence: true, length: { minimum: 6}
end
