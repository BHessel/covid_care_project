class PackagesController < ApplicationController


    def new
        @package = Package.new
    end

    def create

        #redirect_to page where they fill out info in package path(#argument of package)
    end

   


end
