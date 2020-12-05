class Offer < ApplicationRecord
    belongs_to :buyer, :class_name => "User"
    belongs_to :agent
    belongs_to :house

    validates :agent, :amount, presence: true
    validates :amount, numericality: { greater_than: 0 }

end
