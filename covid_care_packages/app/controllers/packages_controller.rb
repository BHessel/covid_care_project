class PackagesController < ApplicationController


    def new
        @package = Package.new
    end
    
    def create
        @user = User.find(session[:user_id])
        @package = Package.create(recipient_name: params[:recipient_name],
                                    recipient_address: params[:recipient_address],
                                    recipient_message: params[:recipient_message],
                                    user_id: @user.id
                                    )
        redirect_to package_path(@package.id)
        #redirect_to page where they fill out info in package path(#argument of package)
    end
    
    
    def show
        @package = Package.find(params[:id])
        @items = Item.all
        
    end
    
    
    def add_items
        byebug
    
    end



end
