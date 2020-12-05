class ToursController < ApplicationController

    def create 
        @house = House.find(params[:house_id])
        merged_params = tour_params.merge({:buyer_id => current_user.id})
  
        @tour = @house.tours.create(merged_params)
        if @tour.valid?
            redirect_to @house
        end  
    end

    private 

    def tour_params
        params.require(:tour).permit(:agent_id, :date, :time)
    end
    
end
