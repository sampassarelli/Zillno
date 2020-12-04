class OffersController < ApplicationController

    def show 
        @offer = Offer.find(params[:id])
    end

    def new 
        @offer = Offer.new
    end

    def create 
        @house = House.find(params[:house_id])
        @offer = @house.offers.create(offers_params)
        
        if @offer.save
            redirect_to root_path
        end
    end

    private 

    def offers_params
        params.require(:offer).permit(:amount)
    end

end
