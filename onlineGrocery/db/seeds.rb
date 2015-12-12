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
    {name: "banana", product_type: 1, price: 1.00, detail: "Crazy Banana", filename: "banana.jpg", private: "f:"},
    {name: "broccoli",product_type: 0, price: 1.00, detail: "Crazy Broccoli", filename: "broccoli.jpg", private: "f"},
    {name: "cabbage", product_type: 0, price: 1.00, detail: "Crazy Cabbage", filename: "cabbage.png", private: "f"},
    {name: "carrot", product_type: 0, price: 1.00, detail: "Crazy Carrot", filename: "carrot.jpg", private: "f"},
    {name: "cilantro", product_type: 0, price: 1.00, detail: "Crazy Cilantro", filename: "cilantro.jpg", private: "f"},
    {name: "fuji apple", product_type: 0, price: 1.00, detail: "Crazy Fuji-Apple", filename: "fuji-apple.jpeg", private: "f"},
    {name: "grape", product_type: 1, price: 1.00, detail: "Crazy Grape", filename: "grape.jpg", private: "f"},
    {name: "green bell pepper", product_type: 0, price: 1.00, detail: "Crazy Green-bell-pepper", filename: "green-bell-pepper.jpg", private: "f"},
    {name: "green onion", product_type: 0, price: 1.00, detail: "Crazy Green-Onion", filename: "green-onion.png", private: "f"},
    {name: "orange", product_type: 1, price: 1.00, detail: "Crazy Orange", filename: "orange.jpg", private: "f"},
    {name: "peach", product_type: 1, price: 1.00, detail: "Crazy Peach", filename: "peach.jpg", private: "f"},
    {name: "pineapple", product_type: 1, price: 1.00, detail: "Crazy Pineapple", filename: "pineapple.jpg", private: "f"},
    {name: "plum", product_type: 1, price: 1.00, detail: "Crazy Plum", filename: "plum.jpg", private: "f"},
    {name: "pomegranate", product_type: 1, price: 1.00, detail: "Crazy Pomegranate", filename: "pomegranate.jpg", private: "f"},
    {name: "potatoe", product_type: 1, price: 1.00, detail: "Crazy Potate", filename: "potatoe.jpeg", private: "f"},
    {name: "red bell pepper", product_type: 0, price: 1.00, detail: "Crazy Red-bell-pepper", filename: "red-bell-pepper.jpg", private: "f"},
    {name: "snap peas", product_type: 0, price: 1.00, detail: "Crazy snap-Peas", filename: "snap-Peas.jpg", private: "f"},
    {name: "strawberry", product_type: 1, price: 1.00, detail: "Crazy Strawberry", filename: "strawberry.jpg", private: "f"},
    {name: "watermelon", product_type: 1, price: 1.00, detail: "Crazy Watermelon", filename: "tomotoe.jpg", private: "f"},
    {name: "tomato", product_type: 0, price: 1.00, detail: "Crazy Tomato", filename: "watermelon.jpg", private: "f"},
    {name: "zucchini", product_type: 0, price: 1.00, detail: "Crazy Zucchini", filename: "zucchini.jpg", private: "f"}
])

#images = Image.create([
#    {filename: "banana.jpg", private: "f", product_id: 1 },
#    {filename: "broccoli.jpg", private: "f", product_id: 2},
#    {filename: "cabbage.png", private: "f", product_id: 3},
#    {filename: "carrot.jpg", private: "f", product_id: 4},
#    {filename: "cilantro.jpg", private: "f", product_id: 5},
#    {filename: "fuji-apple.jpeg", private: "f", product_id: 6},
#    {filename: "grape.jpg", private: "f", product_id: 7 },
#    {filename: "green-bell-pepper.jpg", private: "f", product_id: 8},
#    {filename: "green-onion.png", private: "f", product_id: 9},
#    {filename: "orange.jpg", private: "f", product_id: 10 },
#    {filename: "peach.jpg", private: "f", product_id: 11},
#    {filename: "pineapple.jpg", private: "f", product_id: 12 },
#    {filename: "plum.jpg", private: "f", product_id: 13 },
#    {filename: "pomegranate.jpg", private: "f", product_id: 14},
#    {filename: "potatoe.jpeg", private: "f", product_id: 15},
#    {filename: "red-bell-pepper.jpg", private: "f", product_id: 16},
#    {filename: "snap-Peas.jpg", private: "f", product_id: 17},
#    {filename: "strawberry.jpg", private: "f", product_id: 18},
#    {filename: "tomotoe.jpg", private: "f", product_id: 19},
#    {filename: "watermelon.jpg", private: "f", product_id: 20},
#    {filename: "zucchini.jpg", private: "f", product_id: 21}
#
#])

address = Address.create([
    {line_1_building: "50", line_2_street: "something ave", city: "Chico", country: "US", user_id: 1, state: "CA", zipcode: 95926}

])
