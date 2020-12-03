class HousesController < ApplicationController

    def 
      def index
        @houses = House.all
      end
    
      def show
        find_house
      end
     
      def new 
        @house = House.new
      end

      def create
        
      end
      
      def edit
        find_house
      end

      def update
      
      end
    
      def destroy
        find_house.destroy
      end

      private 

      def house_params 
        params.require(:house).permit(:address, :price, :seller_id, :agent_id, :bedrooms, :bathrooms, :description, :picture)
      end

      def find_house
        @house = House.find(params[:id])
      end
      
end
