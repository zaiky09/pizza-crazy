class RestaurantpizzasSerializer < ActiveModel::Serializer
  attributes :id, :price, :pizza_id, :restaurant_id
end
