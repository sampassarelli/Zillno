class UsersController < ApplicationController

    def show
        find_user
    end 

    def new 
        @user = User.new
    end

    def create

    end

    def edit 
        find_user
    end

    def update 

    end

    def destroy 
        find_user.destroy
    end

    private 

    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :user_name, )
    end

end
