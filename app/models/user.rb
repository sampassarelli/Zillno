class User < ApplicationRecord
    has_many :tours, :foreign_key => "buyer_id"
    has_many :offers, :foreign_key => "buyer_id"
    has_many :houses, :foreign_key => "seller_id"
    has_many :house_reviews, :foreign_key => "buyer_id"
    has_many :agents, through: :tours
    has_many :agents, through: :purchases
    has_many :agents, through: :houses

    has_secure_password
    
end
