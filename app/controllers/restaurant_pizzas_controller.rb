class RestaurantPizzasController < ApplicationController

    # Create 
    def create
        rpizza = RestaurantPizza.create(rpizza_params)
        render json: rpizza, status: :created
    end

    private

    def rpizza_params
        params.permit(:price, :pizza_id, :restaurant_id)
    end
end
