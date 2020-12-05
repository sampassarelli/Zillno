class Tour < ApplicationRecord
    require 'date'
    belongs_to :buyer, :class_name => "User"
    belongs_to :house 
    belongs_to :agent

    validates :agent, :date, :time, presence: true 
    # validate :tour_date_before_today

end
