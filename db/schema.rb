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

ActiveRecord::Schema.define(version: 20130819130631) do

  create_table "carts", force: true do |t|
    t.integer "user_id"
  end

  create_table "items", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.float    "price"
    t.float    "weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "positions", force: true do |t|
    t.integer  "cart_id"
    t.integer  "item_id"
    t.integer  "quantity",   default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "positions", ["cart_id", "item_id"], name: "index_positions_on_cart_id_and_item_id"
  add_index "positions", ["item_id", "cart_id"], name: "index_positions_on_item_id_and_cart_id"

  create_table "users", force: true do |t|
    t.string   "login"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "virtual_items", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
