class RestaurantPizzasController < ApplicationController

    # Create 
    def create
        restaurant_pizza = RestaurantPizza.create(restaurant_pizza_params)
        if restaurant_pizza
            render json: restaurant_pizza, status: :created
        else
            render json: {error: "validation errors"}
        end
    end

    private

    def restaurant_pizza_params
        params.permit(:price, :pizza_id, :restaurant_id)
    end
end
