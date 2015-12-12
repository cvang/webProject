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
# 2 = vegetable
# 1 = furit
products = Product.create([
    {name: "banana", product_type: 1, price: 1.00, detail: "Crazy Banana", filename: "banana.jpg", private: "f:"},
    {name: "broccoli",product_type: 2, price: 1.00, detail: "Crazy Broccoli", filename: "broccoli.jpg", private: "f"},
    {name: "cabbage", product_type: 2, price: 1.00, detail: "Crazy Cabbage", filename: "cabbage.png", private: "f"},
    {name: "carrot", product_type: 2, price: 1.00, detail: "Crazy Carrot", filename: "carrot.jpg", private: "f"},
    {name: "cilantro", product_type: 2, price: 1.00, detail: "Crazy Cilantro", filename: "cilantro.jpg", private: "f"},
    {name: "fuji apple", product_type: 2, price: 1.00, detail: "Crazy Fuji-Apple", filename: "fuji-apple.jpeg", private: "f"},
    {name: "grape", product_type: 1, price: 1.00, detail: "Crazy Grape", filename: "grape.jpg", private: "f"},
    {name: "green bell pepper", product_type: 2, price: 1.00, detail: "Crazy Green-bell-pepper", filename: "green-bell-pepper.jpg", private: "f"},
    {name: "green onion", product_type: 2, price: 1.00, detail: "Crazy Green-Onion", filename: "green-onion.png", private: "f"},
    {name: "orange", product_type: 1, price: 1.00, detail: "Crazy Orange", filename: "orange.jpg", private: "f"},
    {name: "peach", product_type: 1, price: 1.00, detail: "Crazy Peach", filename: "peach.jpg", private: "f"},
    {name: "pineapple", product_type: 1, price: 1.00, detail: "Crazy Pineapple", filename: "pineapple.jpg", private: "f"},
    {name: "plum", product_type: 1, price: 1.00, detail: "Crazy Plum", filename: "plum.jpg", private: "f"},
    {name: "pomegranate", product_type: 1, price: 1.00, detail: "Crazy Pomegranate", filename: "pomegranate.jpg", private: "f"},
    {name: "potatoe", product_type: 1, price: 1.00, detail: "Crazy Potate", filename: "potatoe.jpeg", private: "f"},
    {name: "red bell pepper", product_type: 2, price: 1.00, detail: "Crazy Red-bell-pepper", filename: "red-bell-pepper.jpg", private: "f"},
    {name: "snap peas", product_type: 2, price: 1.00, detail: "Crazy snap-Peas", filename: "snap-Peas.jpg", private: "f"},
    {name: "strawberry", product_type: 1, price: 1.00, detail: "Crazy Strawberry", filename: "strawberry.jpg", private: "f"},
    {name: "watermelon", product_type: 1, price: 1.00, detail: "Crazy Watermelon", filename: "tomotoe.jpg", private: "f"},
    {name: "tomato", product_type: 2, price: 1.00, detail: "Crazy Tomato", filename: "watermelon.jpg", private: "f"},
    {name: "zucchini", product_type: 2, price: 1.00, detail: "Crazy Zucchini", filename: "zucchini.jpg", private: "f"}
])


addresses = Address.create([
    {line_1_building: "50", line_2_street: "some ave", city: "Chico", country: "US", user_id: 1, state: "CA", zipcode: 95926},
    {line_1_building: "1555", line_2_street: "Lupin ave", city: "Chico", country: "US", user_id: 2, state: "CA", zipcode: 95972},
    {line_1_building: "780", line_2_street: "First ave", city: "Chico", country: "US", user_id: 3, state: "CA", zipcode: 95972},
    {line_1_building: "950", line_2_street: "Last ave", city: "Chico", country: "US", user_id: 4, state: "CA", zipcode: 95972}
])

credit_cards = CreditCard.create([
    {card_numbers: 1234567890098765, expire: 102018, cvs: 888, user_id: 2},
    {card_numbers: 5432167890098765, expire: 122030, cvs: 777, user_id: 3},
    {card_numbers: 5645645679873023, expire: 112099, cvs: 000 , user_id: 4}
])
