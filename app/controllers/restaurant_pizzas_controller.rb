class RestaurantPizzasController < ApplicationController

    # Create 
    def create
        rpizza = RestaurantPizza.create(rpizza_params)
        if rpizza
            render json: rpizza, status: :created
        else
            render json: {error: "validation errors"}, status: :unprocessable_entity
    end

    private

    def rpizza_params
        params.permit(:price, :pizza_id, :restaurant_id)
    end
end
