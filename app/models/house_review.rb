class HouseReview < ApplicationRecord
    belongs_to :buyer, :class_name => "User"
    belongs_to :house

    validates :title, :content, presence: true
    # validates :toured: inclusion: (in: ["Y", "N"], message: "must be either 'Y' or 'N'")
end
