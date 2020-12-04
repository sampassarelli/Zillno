class HouseReviewsController < ApplicationController
    

    def new 
        @house_review = HouseReview.new
    end

    def create
        @house = House.find(params[:house_id])
        @house_review = HouseReview.create(house_reviews_params)
        # if @house_review.valid?
        #     redirect_to heroine_path(@house_review.heroine_id)
    
        # else
        #     flash[:house_reviews_errors] = @house_review.errors.full_messages
        #     redirect_to new_house_review_path
        #     render :new
        # end
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
