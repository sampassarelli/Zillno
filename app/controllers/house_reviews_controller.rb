class HouseReviewsController < ApplicationController
    

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

    def house_review_params

    end

    def find_house_review
        @house_review = HouseReview.find(params[:id])
    end

end
