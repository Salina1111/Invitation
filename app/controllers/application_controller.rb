class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:accept_invitation, keys: [:firstname, :lastname,:email, :password,:faculty,:batch,:phone_number,:roll_number,:address,:password_confirmation])
    devise_parameter_sanitizer.permit(:sign_up, keys:[:firstname, :lastname,:email, :password,:faculty,:batch,:phone_number,:roll_number,:address,:password_confirmation])
    devise_parameter_sanitizer.permit(:account_update,keys: [:firstname, :lastname,:email, :password,:faculty,:batch,:phone_number,:roll_number,:address,:password_confirmation]) 
  end 
  
end
