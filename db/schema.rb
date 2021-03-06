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

ActiveRecord::Schema.define(version: 20160128225922) do

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.date     "date"
    t.time     "hour"
    t.integer  "owner"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "userlimit"
    t.integer  "goalkeeperlimit"
    t.boolean  "isFulGoal",       default: false
    t.boolean  "isFul",           default: false
    t.float    "cost"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "adress"
  end

  add_index "events", ["owner"], name: "index_events_on_owner"

  create_table "events_users", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "event_id"
  end

  add_index "events_users", ["event_id"], name: "index_events_users_on_event_id"
  add_index "events_users", ["user_id"], name: "index_events_users_on_user_id"

  create_table "subscriptions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "subscriptions", ["event_id"], name: "index_subscriptions_on_event_id"
  add_index "subscriptions", ["user_id"], name: "index_subscriptions_on_user_id"

  create_table "user_events", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "position"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "users_events", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "events_id"
  end

  add_index "users_events", ["events_id"], name: "index_users_events_on_events_id"
  add_index "users_events", ["user_id"], name: "index_users_events_on_user_id"

end
