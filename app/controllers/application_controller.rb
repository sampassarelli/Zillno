class ApplicationController < ActionController::Base

    before_action :current_user
    before_action :authorization
    
    def current_user 
        @current_user = User.find_by(id: session[:user_id])
    end 

    def authorization 
        redirect_to new_login_path unless current_user
    end 

    

end
