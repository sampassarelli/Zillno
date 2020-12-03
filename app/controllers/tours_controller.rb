class ToursController < ApplicationController

    def show 

    end

    def new 

    end

    def create 

    end

    def edit 

    end

    def update 

    end

    def destroy

    end 

    private 

    def find_tour
        @tour = Tour.find(params[:id])
    end

    def tour_params

    end
end
