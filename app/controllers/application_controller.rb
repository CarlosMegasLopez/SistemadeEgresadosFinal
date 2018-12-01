class ApplicationController < ActionController::Base
  include Pundit
  
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  protect_from_forgery with: :exception
  # protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  #private
    #def after_sign_in_path_for(resource)
    	#root_path 
      # El path a donde tu quieres que redirija cuando se ha logueado correctamente, ej. posts_path
    #end

#end

 private
    def after_sign_in_path_for(resource)
      if current_user.type_user != 'No'
        root_path
      else
        sign_out(current_user)
        root_path
      end
    end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :encrypted_password, :reset_password_token, 
        :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at, 
        :current_sign_in_ip, :last_sign_in_ip, :created_at, :updated_at, :type_user, :career_id, :generation_id])

      devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :encrypted_password, :reset_password_token, 
        :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at, 
        :current_sign_in_ip, :last_sign_in_ip, :created_at, :updated_at, :type_user, :career_id, :generation_id])
      
      devise_parameter_sanitizer.permit(:account_update, keys: [:email, :encrypted_password, :reset_password_token, 
        :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at, 
        :current_sign_in_ip, :last_sign_in_ip, :created_at, :updated_at, :type_user, :career_id, :generation_id])
    end


  private 
    def user_not_authorized
      flash[:notice] = "Acceso no autorizado."
      redirect_to(root_path)
    end


end
