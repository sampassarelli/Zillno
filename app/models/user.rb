class User < ApplicationRecord
    has_many :tours
    has_many :purchases
    has_many :houses
    has_many :agents, through: :tours
    has_many :agents, through: :purchases
    has_many :agents, through: :houses

end
