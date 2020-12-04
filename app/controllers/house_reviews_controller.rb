class HouseReviewsController < ApplicationController
    
    def create
        @house = House.find(params[:house_id])
        merged_params = house_review_params.merge({:buyer_id => current_user.id})
  
        @house_review = @house.house_reviews.create(merged_params)
        if @house_review.valid?
            redirect_to @house
        end
    end


    def destroy
       find_house_review.destroy
    end

    
    private 

    def house_review_params
        params.require(:house_review).permit(:title, :content)
    end

    def find_house_review
        @house_review = HouseReview.find(params[:id])
    end

end
