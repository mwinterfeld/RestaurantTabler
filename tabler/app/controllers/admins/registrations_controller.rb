class Admins::RegistrationsController < Devise::RegistrationsController
 	#skip_before_action :require_no_authentication, only: [:new, :create, :cancel]
 	#prepend_before_action :authenticate_scope!, only: [:new, :create, :cancel]
  
  protected
 
  def sign_up_params

    params.require(:admin).permit(:firstName, :lastName, :email, :password, :password_confirmation)
  end
 
  def account_update_params
    params.require(:admin).permit(:firstName, :lastName, :email, :password, :password_confirmation, :current_password)
  end
end