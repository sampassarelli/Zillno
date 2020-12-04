class UsersController < ApplicationController
    skip_before_action :authorization, only: [:new, :create, :index]

    def show
        find_user
    end 

    def new 
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else 
            flash[:my_errors] = @user.errors.full_messages
            redirect_to new_user_path
        end
    end

    def edit 
        find_user
    end

    def update 
        @user = User.find(params[:id])
        if @user.update(user_params)
            redirect_to user_path(@user)
          else
            flash[:my_errors] = @user.errors.full_messages
            redirect_to edit_user_path
        end
    end

    def destroy 
        find_user.destroy
        redirect_to users_path
    end

    private 

    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :user_name, :password, :img_url, :email)
    end

end
