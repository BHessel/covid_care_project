class ApplicationController < ActionController::Base

    helper_method :logged_in?
    helper_method :current_user
    
    def home
    end
    
    def about
    end
    
    
    def logged_in?
    
        !!session[:user_id]
            
    end



    def current_user
        @current_user= User.find(session[:user_id])
    end
    

end
