class RestaurantPizza < ApplicationRecord
     
    belongs_to :restaurant
    belongs_to :pizza

    validates :price, presence: true
    validate :price_range

    def price_range
        if price.nil? || price <= 0 || price >= 30
            errors.add(:price, "Price not in the correct range")
        end
    end
     
end
