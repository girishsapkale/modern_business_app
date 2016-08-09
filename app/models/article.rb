class Article < ActiveRecord::Base
  validates :body, presence: true
  
  has_attached_file :avatar

                            
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  
end
