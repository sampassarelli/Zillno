class HouseReviewsController < ApplicationController
    
    def create
        @house = House.find(params[:house_id])
        merged_params = house_review_params.merge({:buyer_id => current_user.id})
  
        @house_review = @house.house_reviews.create(merged_params)
        if @house_review.valid?
            redirect_to @house
        end
    end

    private 

    def house_review_params
        params.require(:house_review).permit(:title, :content)
    end
end
