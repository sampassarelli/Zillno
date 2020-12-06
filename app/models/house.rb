class House < ApplicationRecord
    geocoded_by :address
    after_validation :geocode

    has_many :house_reviews, dependent: :destroy
    has_many :tours, dependent: :destroy
    has_many :offers, dependent: :destroy

    belongs_to :seller, :class_name => "User"
    belongs_to :agent

    validates :address, :agent, :bedrooms, :bathrooms, :price, :description, presence: true
    validates :bedrooms, :price, numericality: { only_integer: true }
    validates :bedrooms, :bathrooms, :price, numericality: {greater_than: 0 }
    validates :bathrooms, numericality: { only_float: true}

     
   

    def google_map(center)
        "https://maps.googleapis.com/maps/api/staticmap?markers=color:red%7label:C%7Ccenter=#{center}&size=500x500&zoom=17&key=#{Rails.application.credentials.google_maps_api_key}"
    end

end
