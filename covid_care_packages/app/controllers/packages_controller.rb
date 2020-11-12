class PackagesController < ApplicationController


    def new
        @package = Package.new
    end
    
    def create
        @user = User.find(session[:user_id])
        @package = Package.create(recipient_name: params[:package][:recipient_name],
                                    recipient_address: params[:package][:recipient_address],
                                    recipient_message: params[:package][:recipient_message],
                                    user_id: @user.id
                                    )
        params[:package][:item_ids].map do |item_id|
            if item_id != ""
            item = Item.find(item_id)
            @package.items << item
            end
        end

        redirect_to package_path(@package.id)
    end
    
    
    def show
        @package = Package.find(params[:id])
        @items = Item.all
        
    end
    
    
    def add_items
       #find the items that are checked
       #store the 
    
    end



end
