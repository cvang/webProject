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
    {product_type: 1, price: 0.99, product_detail: "Crazy Apple"}, 
    {product_type: 1, price: 1.00, product_detail: "Crazy Orange"},
    {product_type: 1, price: 1.00, product_detail: "Crazy Banana"},
    {product_type: 1, price: 1.00, product_detail: "Crazy Kiwi"},
    {product_type: 1, price: 1.00, product_detail: "Crazy Strawberry"},
    {product_type: 1, price: 1.00, product_detail: "Crazy Grape"},
    {product_type: 1, price: 1.00, product_detail: "Crazy Peach"},
    {product_type: 1, price: 1.00, product_detail: "Crazy Pomegranate"},
    {product_type: 1, price: 1.00, product_detail: "Crazy Pineapple"},
    {product_type: 1, price: 1.00, product_detail: "Crazy Plum"},
    {product_type: 0, price: 1.00, product_detail: "Crazy Broccoli"},
    {product_type: 0, price: 1.00, product_detail: "Crazy Carrot"},
    {product_type: 0, price: 1.00, product_detail: "Crazy Cilantro"},
    {product_type: 0, price: 1.00, product_detail: "Crazy Green-bell-pepper"},
    {product_type: 0, price: 1.00, product_detail: "Crazy Red-bell-peper"},
    {product_type: 0, price: 1.00, product_detail: "Crazy Tomotoe"},
    {product_type: 0, price: 1.00, product_detail: "Crazy Zucchini"},
    {product_type: 0, price: 1.00, product_detail: "Crazy Cabbage"},
    {product_type: 0, price: 1.00, product_detail: "Crazy Green-onion"},
    {product_type: 0, price: 1.00, product_detail: "Crazy sanp-Peas"}
])
