require 'Faker' from '../Gemfile';

puts '🍕 Seeding pizza crazy...'

#Veg pizza
15.times do 
    Pizza.create(
        name: Faker::Food.vegetables,
        ingredients: Faker::Food.ingredients
    )
end

#Restaurants
10.times do
    restaurant = Restaurant.create(
        name: Faker::Restaurant.name,
        address: Faker::Address.full_address
    )

#Pizza and price at reataurant
    Pizza.all.sample(10).each do |pizza_dish|
        rpizza = RestaurantPizza.create(
            price: rand(1..30),
            pizza_id: pizza_dish.id,
            restaurant_id: restaurant.id
        )
    end
end

puts '✅ Done seeding!'

