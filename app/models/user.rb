class User < ApplicationRecord
    has_many :house_reviews, :foreign_key => "buyer_id", dependent: :destroy
    has_many :tours, :foreign_key => "buyer_id", dependent: :destroy
    has_many :offers, :foreign_key => "buyer_id", dependent: :destroy
    has_many :houses, :foreign_key => "seller_id", dependent: :destroy
    has_many :agents, through: :tours
    has_many :agents, through: :purchases
    has_many :agents, through: :houses

    has_secure_password

    validates :name, :user_name, :email, presence: true
    validates :user_name, uniqueness: true
    
end
