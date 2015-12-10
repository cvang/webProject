# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([
    {email: 'admin@admin.com', name: "Ad", password: "ad", password_confirmation: "ad", last_name: "min", phone: 8888888, admin: "t"},
   {email: 'a@a.com', name: "Apple", password: "a", password_confirmation: "a", last_name: "Tree", phone: 9999999, admin: "f"},
   {email: 'b@b.com', name: "Bee", password: "b", password_confirmation: "b", last_name: "Hive", phone: 9999999, admin: "f"},
   {email: 'c@c.com', name: "Cat", password: "c", password_confirmation: "c", last_name: "Hairy", phone: 9999999, admin: "f"}

])

#note to self
# 0 = vegetable
# 1 = furit
products = Product.create([
    {name: "banana", product_type: 1, price: 1.00, detail: "Crazy Banana"},
    {name: "broccoli",product_type: 0, price: 1.00, detail: "Crazy Broccoli"},
    {name: "cabbage", product_type: 0, price: 1.00, detail: "Crazy Cabbage"},
    {name: "carrot", product_type: 0, price: 1.00, detail: "Crazy Carrot"},
    {name: "cilantro", product_type: 0, price: 1.00, detail: "Crazy Cilantro"},
    {name: "fuji apple", product_type: 0, price: 1.00, detail: "Crazy Fuji-Apple"},
    {name: "grape", product_type: 1, price: 1.00, detail: "Crazy Grape"},
    {name: "green bell pepper", product_type: 0, price: 1.00, detail: "Crazy Green-bell-pepper"},
    {name: "green onion", product_type: 0, price: 1.00, detail: "Crazy Green-Onion"},
    {name: "orange", product_type: 1, price: 1.00, detail: "Crazy Orange"},
    {name: "peach", product_type: 1, price: 1.00, detail: "Crazy Peach"},
    {name: "pineapple", product_type: 1, price: 1.00, detail: "Crazy Pineapple"},
    {name: "plum", product_type: 1, price: 1.00, detail: "Crazy Plum"},
    {name: "pomegranate", product_type: 1, price: 1.00, detail: "Crazy Pomegranate"},
    {name: "potate", product_type: 1, price: 1.00, detail: "Crazy Potate"},
    {name: "red bell pepper", product_type: 0, price: 1.00, detail: "Crazy Red-bell-pepper"},
    {name: "snap peas", product_type: 0, price: 1.00, detail: "Crazy snap-Peas"},
    {name: "strawberry", product_type: 1, price: 1.00, detail: "Crazy Strawberry"},
    {name: "watermelon", product_type: 1, price: 1.00, detail: "Crazy Watermelon"},
    {name: "tomato", product_type: 0, price: 1.00, detail: "Crazy Tomato"},
    {name: "zucchini", product_type: 0, price: 1.00, detail: "Crazy Zucchini"}
])

images = Image.create([
    {filename: "banana.jpg", private: "f", product_id: 1 },
    {filename: "broccoli.jpg", private: "f", product_id: 2},
    {filename: "cabbage.png", private: "f", product_id: 3},
    {filename: "carrot.jpg", private: "f", product_id: 4},
    {filename: "cilantro.jpg", private: "f", product_id: 5},
    {filename: "fuji-apple.jpeg", private: "f", product_id: 6},
    {filename: "grape.jpg", private: "f", product_id: 7 },
    {filename: "green-bell-pepper.jpg", private: "f", product_id: 8},
    {filename: "green-onion.png", private: "f", product_id: 9},
    {filename: "orange.jpg", private: "f", product_id: 10 },
    {filename: "peach.jpg", private: "f", product_id: 11},
    {filename: "pineapple.jpg", private: "f", product_id: 12 },
    {filename: "plum.jpg", private: "f", product_id: 13 },
    {filename: "pomegranate.jpg", private: "f", product_id: 14},
    {filename: "potatoe.jpeg", private: "f", product_id: 15},
    {filename: "red-bell-pepper.jpg", private: "f", product_id: 16},
    {filename: "snap-Peas.jpg", private: "f", product_id: 17},
    {filename: "strawberry.jpg", private: "f", product_id: 18},
    {filename: "tomotoe.jpg", private: "f", product_id: 19},
    {filename: "watermelon.jpg", private: "f", product_id: 20},
    {filename: "zucchini.jpg", private: "f", product_id: 21}

])

address = Address.create([
    {line_1_building: "50", line_2_street: "something ave", city: "Chico", country: "US", user_id: 1, state: "CA", zipcode: 95926}

])
