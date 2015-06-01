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

ActiveRecord::Schema.define(version: 20150601215733) do

  create_table "apple_pears", force: true do |t|
    t.integer  "bean_id"
    t.integer  "pastry_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "apple_pears", ["bean_id"], name: "index_apple_pears_on_bean_id"
  add_index "apple_pears", ["pastry_id"], name: "index_apple_pears_on_pastry_id"

  create_table "banana_oranges", force: true do |t|
    t.integer  "bean_id"
    t.integer  "pastry_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "banana_oranges", ["bean_id"], name: "index_banana_oranges_on_bean_id"
  add_index "banana_oranges", ["pastry_id"], name: "index_banana_oranges_on_pastry_id"

  create_table "cranberries_pineapples", force: true do |t|
    t.integer  "bean_id"
    t.integer  "pastry_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cranberries_pineapples", ["bean_id"], name: "index_cranberries_pineapples_on_bean_id"
  add_index "cranberries_pineapples", ["pastry_id"], name: "index_cranberries_pineapples_on_pastry_id"

  create_table "snails", force: true do |t|
    t.string   "name"
    t.string   "gender"
    t.string   "location"
    t.string   "spirit"
    t.string   "animal"
    t.string   "greatest"
    t.string   "accomplishment"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
