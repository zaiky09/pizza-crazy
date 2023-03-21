class RestaurantsController < ApplicationController

    # List all reataurants
    def index
        restaurants = Restaurant.all
        render json: restaurants, status: :ok
    end

    # List one specif restaurant
    def show
        restaurant = Restaurant.find_by(id: params[:id])
        if restaurant
            render json: restaurant, status: :ok
        else
            render json: {error: "Restaurant not found"}, status: :not_found
        end
    end

    # Delete one specific restaurant
    def destroy
        restaurant = Restaurant.find_by(id: params[:id])
        if restaurant
            restaurant.destroy
            head :no_content
        else
            render json: {error: "No such restaurant"}, status: :not_found
        end
    end

    private

    def restaurant_params
        params.permit(:name, :address)
    end

end
