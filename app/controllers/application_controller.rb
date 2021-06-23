class ApplicationController < ActionController::Base
    before_action :require_authentication

    def require_authentication
        if !session[:admin_id]
            redirect_to authentication_form_path
        end
    end 
end
