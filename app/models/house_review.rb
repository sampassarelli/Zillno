class HouseReview < ApplicationRecord
    belongs_to :buyer, :class_name => "User"
    belongs_to :house
end
