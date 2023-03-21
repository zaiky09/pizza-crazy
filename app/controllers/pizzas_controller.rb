class PizzasController < ApplicationController

    #List all pizzas
    def index
        pizzas = Pizza.all
        render json: pizzas, status: :ok
    end
    
end
