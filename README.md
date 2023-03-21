# README

# Pizza-crazy

Pizza-crazy is a basic API.

#### link deployed using render

     https://pizza-crazy.onrender.com

The application has been built with the MVC design pattern.

## Pre-Requisites
In order to use this repository you will need the following:

Operating System (Windows 10+, Linux 3.8+, or MacOS X 10.7+)
RAM >= 4GB
Free Space >= 2GB
Built With
This application has been built with the following tools:

### Gem-files used

ruby "3.0.2"

gem "rails", "~> 7.0.4", ">= 7.0.4.3"

gem 'faker'

gem "sprockets-rails"

gem "sqlite3", "~> 1.4"

gem "puma", "~> 5.0"

gem "jbuilder"

gem 'active_model_serializers'

gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

gem "bootsnap", require: false

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end

## Setup
You can setup this repository by following this manual

#### Clone the repository
    git clone git@github.com:zaiky09/pizza-crazy.git
#### Ensure the ruby gems are setup in your machine
    bundle install
#### Perform any pending database migrations
    rake db:migrate db:seed
#### Start the server
    rails s
### Alterante method to access backend
##### Open postman using 
                        : https://web.postman.co/workspace/My-Workspace~b779a210-dd50-4577-8e7f-6c36948203ef/request/create?requestId=a231f6da-3e8b-4e75-976b-39999244380d

                        make sure to include in the header section of your request:

                                            Content-Type: application/json

Copy the link http://127.0.0.1:3000 & paste it in required section on postman
run the deliverables in the routes section by adding the required paths

### Project deliverables    
Project conforms to the following set of guidelines:

#### Models
Created the following relationships:

- A `Restaurant` has many `Pizza`s through `RestaurantPizza`
- A `Pizza` has many `Restaurant`s through `RestaurantPizza`
- A `RestaurantPizza` belongs to a `Restaurant` and belongs to a `Pizza`

Started by creating the models and migrations for the following database tables:

Added any code needed in the model files to establish the relationships. Then, run the migrations.

 Generated my own seed data to test the application.

#### Validations
Added validations to the `RestaurantPizza` model:

- must have a `price` between 1 and 30

#### Routes
Set up the following routes. Make sure to return JSON data in the format
specified along with the appropriate HTTP verb.

##### GET /restaurants
Return JSON data in the format below:

```
[
  {
    "id": 1,
    "name": "Sottocasa NYC",
    "address": "298 Atlantic Ave, Brooklyn, NY 11201"
  },
  {
    "id": 2,
    "name": "PizzArte",
    "address": "69 W 55th St, New York, NY 10019"
  }
]
```

##### GET /restaurants/:id
If the `Restaurant` exists, return JSON data in the format below:

```
{
  "id": 1,
  "name": "Sottocasa NYC",
  "address": "298 Atlantic Ave, Brooklyn, NY 11201",
  "pizzas": [
    {
      "id": 1,
      "name": "Cheese",
      "ingredients": "Dough, Tomato Sauce, Cheese"
    },
    {
      "id": 2,
      "name": "Pepperoni",
      "ingredients": "Dough, Tomato Sauce, Cheese, Pepperoni"
    }
  ]
}
```

If the `Restaurant` does not exist, return the following JSON data, along with
the appropriate HTTP status code:

```
{
  "error": "Restaurant not found"
}
```

##### DELETE /restaurants/:id
If the `Restaurant` exists, it should be removed from the database, along with
any `RestaurantPizza`s that are associated with it (a `RestaurantPizza` belongs
to a `Restaurant`, so you need to delete the `RestaurantPizza`s before the
`Restaurant` can be deleted).

After deleting the `Restaurant`, return an _empty_ response body, along with the
appropriate HTTP status code.

If the `Restaurant` does not exist, return the following JSON data, along with
the appropriate HTTP status code:

```
{
  "error": "Restaurant not found"
}
```

##### GET /pizzas
Return JSON data in the format below:

```
[
  {
    "id": 1,
    "name": "Cheese",
    "ingredients": "Dough, Tomato Sauce, Cheese"
  },
  {
    "id": 2,
    "name": "Pepperoni",
    "ingredients": "Dough, Tomato Sauce, Cheese, Pepperoni"
  }
]
```

##### POST /restaurant_pizzas
This route should create a new `RestaurantPizza` that is associated with an
existing `Pizza` and `Restaurant`. It should accept an object with the following
properties in the body of the request:

```
{
  "price": 5,
  "pizza_id": 1,
  "restaurant_id": 3
}
```

If the `RestaurantPizza` is created successfully, send back a response with the data
related to the `Pizza`:

```
{
  "id": 1,
  "name": "Cheese",
  "ingredients": "Dough, Tomato Sauce, Cheese"
}
```

If the `RestaurantPizza` is **not** created successfully, return the following
JSON data, along with the appropriate HTTP status code:

```
{
  "errors": ["validation errors"]
}

```

## LICENSE
This repository is distributed under the MIT License

## Author
This repository is maintained by:

Zamil Sheikh
