# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151201190506) do

  create_table "addresses", force: :cascade do |t|
    t.string   "line_1_building"
    t.string   "line_2_street"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.string   "country"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "customer_addresses", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "address_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "customer_addresses", ["address_id"], name: "index_customer_addresses_on_address_id"
  add_index "customer_addresses", ["customer_id"], name: "index_customer_addresses_on_customer_id"

  create_table "customers", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "phone"
    t.string   "name"
    t.string   "last_name"
    t.boolean  "user_type"
  end

  add_index "customers", ["email"], name: "index_customers_on_email", unique: true
  add_index "customers", ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true

  create_table "images", force: :cascade do |t|
    t.string   "filename"
    t.boolean  "private"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "images", ["product_id"], name: "index_images_on_product_id"

  create_table "product_types", force: :cascade do |t|
    t.string   "product_type_descrp"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer  "producttypescode_id"
    t.decimal  "price",               precision: 10, scale: 2
    t.text     "product_detail"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.integer  "customer_id"
    t.integer  "product_type"
  end

  add_index "products", ["producttypescode_id"], name: "index_products_on_producttypescode_id"

end
