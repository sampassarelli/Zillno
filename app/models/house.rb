class House < ApplicationRecord
    # has_many :reviews
    has_many :tours

    belongs_to :seller, :class_name => "User"
    belongs_to :agent

    has_one :purchase
end
