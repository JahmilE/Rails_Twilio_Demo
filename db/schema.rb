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

ActiveRecord::Schema.define(version: 20140321021840) do

  create_table "search_items", force: true do |t|
    t.string   "name"
    t.integer  "subscriber_id"
    t.string   "search_item_color"
    t.string   "search_item_position"
    t.string   "[]"
    t.string   "search_item_text"
    t.string   "search_item_done"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "subscriber_lists_id"
  end

  add_index "search_items", ["subscriber_lists_id"], name: "index_search_items_on_subscriber_lists_id"

  create_table "subscriber_lists", force: true do |t|
    t.integer  "subscriber_id"
    t.string   "list_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subscribers", force: true do |t|
    t.string   "name"
    t.string   "email",                  default: "", null: false
    t.string   "phone"
    t.boolean  "verified"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "subscribers", ["email"], name: "index_subscribers_on_email", unique: true
  add_index "subscribers", ["reset_password_token"], name: "index_subscribers_on_reset_password_token", unique: true

end
