# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

customers = Customer.create([
    {email: 'admin@admin.com', name: "Ad", password: "ad", password_confirmation: "ad", last_name: "min", phone: 8888888, user_type: "t"},
   {email: 'a@a.com', name: "Apple", password: "a", password_confirmation: "a", last_name: "Tree", phone: 9999999, user_type: "f"},
   {email: 'b@b.com', name: "Bee", password: "b", password_confirmation: "b", last_name: "Hive", phone: 9999999, user_type: "f"},
   {email: 'c@c.com', name: "Cat", password: "c", password_confirmation: "c", last_name: "Hairy", phone: 9999999, user_type: "f"}

])

#note to self
# 0 = vegetable
# 1 = furit
products = Product.create([
    {product_type: 1, price: 1.00, product_detail: "Crazy Banana"},
    {product_type: 0, price: 1.00, product_detail: "Crazy Broccoli"},
    {product_type: 0, price: 1.00, product_detail: "Crazy Cabbage"},
    {product_type: 0, price: 1.00, product_detail: "Crazy Carrot"},
    {product_type: 0, price: 1.00, product_detail: "Crazy Cilantro"},
    {product_type: 0, price: 1.00, product_detail: "Crazy Fuji-Apple"},
    {product_type: 1, price: 1.00, product_detail: "Crazy Grape"},
    {product_type: 0, price: 1.00, product_detail: "Crazy Green-bell-pepper"},
    {product_type: 0, price: 1.00, product_detail: "Crazy Green-Onion"},
    {product_type: 1, price: 1.00, product_detail: "Crazy Orange"},
    {product_type: 1, price: 1.00, product_detail: "Crazy Peach"},
    {product_type: 1, price: 1.00, product_detail: "Crazy Pineapple"},
    {product_type: 1, price: 1.00, product_detail: "Crazy Plum"},
    {product_type: 1, price: 1.00, product_detail: "Crazy Pomesanpgranate"},
    {product_type: 1, price: 1.00, product_detail: "Crazy Potate"},
    {product_type: 0, price: 1.00, product_detail: "Crazy Red-bell-peper"},
    {product_type: 0, price: 1.00, product_detail: "Crazy snap-Peas"},
    {product_type: 1, price: 1.00, product_detail: "Crazy Strawberry"},
    {product_type: 1, price: 1.00, product_detail: "Crazy Watermelon"},
    {product_type: 0, price: 1.00, product_detail: "Crazy Tomotoe"},
    {product_type: 0, price: 1.00, product_detail: "Crazy Zucchini"}
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
