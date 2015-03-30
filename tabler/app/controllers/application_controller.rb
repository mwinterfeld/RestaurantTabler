class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
  	if resource.is_a?(User)
  		user_path(resource.id)
  	elsif resource.is_a?(Admin)
      restaurant = Restaurant.find_by_admin_id(resource.id)
      if restaurant.nil?
        new_restaurant_path
      else
  		  restaurant_path(restaurant.id)
      end
  	end
  end

end