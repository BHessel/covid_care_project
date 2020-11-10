class ItemsController < ApplicationController

    def index
        @items = Item.all 
    end

    def show
        @item = Item.find(params[:id])
    end

    def add_to_cart
        @item = Item.find(params[:id])
        current_cart << @item.id
    end 

end
