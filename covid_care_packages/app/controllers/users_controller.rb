class UsersController < ApplicationController

    def show
        find_user
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.valid?
            @user.save
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def edit
        find_user
    end

    def update
        find_user
        @user.update(user_params)
        redirect_to user_path(@user)
    end

    def destroy
        find_user.delete
        redirect_to home_path
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :username)
    end

    def find_user
        @user = User.find(params[:id])
    end



end
