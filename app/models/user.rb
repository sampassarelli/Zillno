class User < ApplicationRecord
    has_many :tours
    has_many :purchases
    has_many :houses, :foreign_key => "seller_id"
    has_many :house_reviews, :foreign_key => "buyer_id"
    has_many :agents, through: :tours
    has_many :agents, through: :purchases
    has_many :agents, through: :houses
end
