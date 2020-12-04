class House < ApplicationRecord
    has_many :house_reviews, dependent: :destroy
    has_many :tours, dependent: :destroy
    has_many :offers, dependent: :destroy

    belongs_to :seller, :class_name => "User"
    belongs_to :agent
end
