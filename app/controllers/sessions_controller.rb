class SessionsController < ApplicationController
    skip_before_action :authorization, only: [:new, :create]

    def index 
        render "homepage/home"
    end

    def new
    end 

    def create 
        user = User.find_by(user_name: params[:session][:user_name])

        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            redirect_to houses_path
        else
            flash[:error] = "Username or Password was Incorrect"
            redirect_to new_login_path
        end 
    end

    def destroy 
        session.delete(:user_id)
        redirect_to houses_path
    end 

end
