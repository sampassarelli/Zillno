class UsersController < ApplicationController

    def show

    end 

    def new 

    end

    def create

    end

    def edit 

    end

    def update 

    end

    def destroy 
        
    end

    private 

    def find_user
        @user = User.fine(params[:id])
    end

    def user_params

    end

end
