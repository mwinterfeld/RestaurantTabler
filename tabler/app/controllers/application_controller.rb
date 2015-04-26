class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
  	if resource.is_a?(User)
  		user_path(resource.id)
  	elsif resource.is_a?(Admin)
      restaurants_path
  	end
  end

  def logged_in?
    if !current_user.nil? or !current_admin.nil?
      return true
    end
   return false
  end
end
