class Agent < ApplicationRecord
    has_many :tours
    has_many :purchases
    has_many :houses
    has_many :users, through: :tours
    has_many :users, through: :purchases
    has_many :users, through: :houses
end
