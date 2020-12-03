class ToursController < ApplicationController

    def show 
        find_tour
    end

    def new 
        @tour = Tour.new
    end

    def create 

    end

    def edit 
        find_tour
    end

    def update 

    end

    def destroy
        find_tour.destroy
    end 

    private 

    def find_tour
        @tour = Tour.find(params[:id])
    end

    def tour_params
        params.require(:tour).permit(:agent_id, :buyer_id, :house_id, :date, :time)
    end
end
