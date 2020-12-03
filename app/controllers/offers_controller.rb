class OffersController < ApplicationController

    def show 
        @offer = Offer.find(params[:id])
    end

    def new 
        @offer = Offer.new
    end

    def create 

    end

end
