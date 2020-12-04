class OffersController < ApplicationController

  
    def create 
        @house = House.find(params[:house_id])
        merged_params = offer_params.merge({:buyer_id => current_user.id})
  
        @offer = @house.offers.create(merged_params)
        if @offer.valid?
            redirect_to @house
        end  
    end

    def destroy 
        find_offer.destroy
    end


    private 

    def offer_params
        params.require(:offer).permit(:amount, :agent_id)
    end

    def find_offer
        @offer = Offer.find(params[:id])
    end
end
