class RestaurantpizzasSerializer < ActiveModel::Serializer
  attributes :id, :price
  has_one :pizza
end
