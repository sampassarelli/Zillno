class Offer < ApplicationRecord
    belongs_to :buyer, :class_name => "User"
    belongs_to :agent
    belongs_to :house


    def self.sorted_offers
        self.all.sort
    end

end
