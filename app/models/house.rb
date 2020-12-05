class House < ApplicationRecord
    has_many :house_reviews, dependent: :destroy
    has_many :tours, dependent: :destroy
    has_many :offers, dependent: :destroy

    belongs_to :seller, :class_name => "User"
    belongs_to :agent

    validates :address, :agent, :bedrooms, :bathrooms, :price, :description, presence: true
    validates :bedrooms, :price, numericality: { only_integer: true }
    validates :bedrooms, :bathrooms, :price, numericality: {greater_than: 0 }
    validates :bathrooms, numericality: { only_float: true}

end
