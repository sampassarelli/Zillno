class ToursController < ApplicationController

    def create 
        @house = House.find(params[:house_id])
        merged_params = tour_params.merge({:buyer_id => current_user.id})
  
        @tour = @house.tours.create(merged_params)
        if @tour.valid?
            redirect_to @house
        end  
    end


    def destroy
        find_tour.destroy
    end 

    private 

    def find_tour
        @tour = Tour.find(params[:id])
    end

    def tour_params
        params.require(:tour).permit(:agent_id, :date, :time)
    end
end
