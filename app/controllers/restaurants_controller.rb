class RestaurantsController < ApplicationController

rescue_from ActiveRecord::RecordNotFound, with: :rende_not_found_response

    # List all restaurants
    def index
        restaurants = Restaurant.all
        render json: restaurants, status: :ok
    end

    # List one specific restaurant
    def show
        restaurant = find_restaurant
        render json: restaurant, include: :pizzas
    end

    # Delete one specific restaurant
    def destroy
        restaurant = find_restuarant
        restaurant.destroy
        head :no_content
    end

    private

    def render_not_found_response
        render json: {error: "No such restaurant"}, status: :not_found
    end

    def find_restaurant
        Restaurant.find(params[:id])
    end

end
