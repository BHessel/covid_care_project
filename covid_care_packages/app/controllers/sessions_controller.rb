class SessionsController < ApplicationController

    def login
    end

    def process_login
        #takes in username from params
        username = params[:username]
        user = User.find_by(username: username)
         #checks if valid in database
        if user
             #if registered, redirects to user show page/ user_path
            redirect_to user_path
        else
             #if not registered back to login page with error to register
            flash.now[:error_message]= "No user found, please register"
            render :login
        end
       
    end

end
