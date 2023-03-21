class RestaurantPizza < ApplicationRecord
    
    validates :price, inclusion: 1..30
    belongs_to :pizza
    belongs_to :restaurant
    
end
