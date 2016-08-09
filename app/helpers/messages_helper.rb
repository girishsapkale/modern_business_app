module MessagesHelper

	def resource_name
    :message
  end

  def resource
    @resource ||= Message.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:message]
    
  end
end
