class ApplicationController < ActionController::Base
     include Pundit::Authorization
     include Pagy::Backend
    before_action :authenticate_user!,  except: [:new, :create]
    protect_from_forgery with: :exception

     before_action :configure_permitted_parameters, if: :devise_controller?

     protected

          def configure_permitted_parameters
               devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:user_type, :name, :email, :password)}

               devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:user_type, :name, :email, :password, :current_password)}
          end
end
#aaaaaaaaaaaaaaaaaaaa