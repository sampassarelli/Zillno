class Agent < ApplicationRecord
    has_many :tours
    has_many :offers
    has_many :houses
    has_many :users, through: :tours
    has_many :users, through: :offers
    has_many :users, through: :houses

    def full_name
        "#{first_name} #{last_name}"
    end
end
