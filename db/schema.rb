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

ActiveRecord::Schema.define(version: 20150313180902) do

  create_table "beers", force: :cascade do |t|
    t.string   "beer_name"
    t.string   "beer_type"
    t.integer  "user_id"
    t.string   "weight"
    t.string   "keg_weight"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "keg_number"
    t.boolean  "container",  default: false
  end

  create_table "bottles", force: :cascade do |t|
    t.integer  "beer_id"
    t.integer  "bottle_count"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "cans", force: :cascade do |t|
    t.integer  "beer_id"
    t.integer  "can_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drinks", force: :cascade do |t|
    t.integer  "beer_id"
    t.integer  "liquor_id"
    t.integer  "drink_number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "liquors", force: :cascade do |t|
    t.string   "liquor_name"
    t.string   "liquor_type"
    t.integer  "user_id"
    t.integer  "case_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "bottle_count"
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "authentication_token"
    t.string   "bar_name"
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "users", ["authentication_token"], name: "index_users_on_authentication_token"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
