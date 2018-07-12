class RegistrationsController < Devise::RegistrationsController
    
    private

    def sign_up_params
      params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation, :roll_number, :batch, :faculty, :phone_number, :address)
    end
  
    def account_update_params
      params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation, :roll_number, :batch, :faculty, :phone_number, :address)
    end


end
