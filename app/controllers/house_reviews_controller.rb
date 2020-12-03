class HouseReviewsController < ApplicationController
    

    def new 
        @house_reviews = HouseReview.new
    end

    def create
    
    end

    def edit
        find_house_review
    end

    def update
    
    end

    def destroy
       find_house_review.destroy
    end

    
    private 

    def house_review_params
        params.require(:house_review).permit(:buyer_id, :house_id, :title, :content)
    end

    def find_house_review
        @house_review = HouseReview.find(params[:id])
    end

end
