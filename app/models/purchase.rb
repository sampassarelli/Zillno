class Purchase < ApplicationRecord
    belongs_to :buyer, :class_name => "User"
    belongs_to :agent
    belongs_to :house
end
