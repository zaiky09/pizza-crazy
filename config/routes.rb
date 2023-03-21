Rails.application.routes.draw do
  # Pizzas
  resources :pizzas, only: [:index]
  #Restaurants
  resources :restaurants, only: [:index, :show, :destroy]

end
