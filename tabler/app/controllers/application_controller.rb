class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(user)
  	if is_admin(user)
  		reservations_path  		
  	else
  		restaurants_path
  	end
  end

  private

  def is_admin(user)
  	User.find(user.id).isAdmin
  end
end