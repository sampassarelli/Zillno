class HousesController < ApplicationController
  skip_before_action :authorization, only: [:index]

  def index
    @houses = House.all
  end

  def show
    find_house
    @house_review = HouseReview.new
    @house_reviews = @house.house_reviews

    @offer = Offer.new
    @offers = @house.offers

    @tour = Tour.new
    @tours = @house.tours
  end
  
  def new 
    @house = House.new
  end

  def create
    merged_params = house_params.merge({:seller_id => current_user.id})
    @house = House.create(merged_params)    
    if @house.valid?
      redirect_to house_path(@house)
    else
      flash[:house_errors] = @house.errors.full_messages
      redirect_to new_house_path
    end
  end
  
  def edit
    find_house
  end

  def update
    merged_params = house_params.merge({:seller_id => current_user.id})
    find_house
    if find_house.update(merged_params)
      redirect_to house_path(@house)
    else 
      flash[:house_errors] = @house.errors.full_messages
      redirect_to edit_house_path
    end
  end


  def destroy
    find_house.destroy
    redirect_to houses_path
  end

  private 

  def house_params 
    params.require(:house).permit(:address, :latitude, :longitude, :price, :seller_id, :agent_id, :bedrooms, :bathrooms, :description, :picture)
  end

  def find_house
    @house = House.find(params[:id])
  end
      
end
