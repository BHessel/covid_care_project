class ApplicationController < ActionController::Base

    helper_method :current_cart

    def home
    end

    def about
    end
    
    def current_cart
        session[:cart] ||= []
    end

    def confirmation
    end
    
    

end
