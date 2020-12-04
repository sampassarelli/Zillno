class House < ApplicationRecord
    has_many :house_reviews
    has_many :tours
    has_many :offers

    belongs_to :seller, :class_name => "User"
    belongs_to :agent
end
