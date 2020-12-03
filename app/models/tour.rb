class Tour < ApplicationRecord
    belongs_to :buyer, :class_name => "User"
    belongs_to :house 
    belongs_to :agent
end
