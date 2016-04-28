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

ActiveRecord::Schema.define(version: 20160428141422) do

  create_table "addresses", force: :cascade do |t|
    t.string   "address_1"
    t.string   "address_2"
    t.string   "address_3"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "country"
    t.integer  "addressable_id"
    t.string   "addressable_type"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "companies", force: :cascade do |t|
    t.text     "notes"
    t.string   "salesperson"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "name"
  end

  create_table "emails", force: :cascade do |t|
    t.string   "email"
    t.integer  "emailable_id"
    t.string   "emailable_type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "interactions", force: :cascade do |t|
    t.string   "topic"
    t.string   "medium"
    t.text     "details"
    t.datetime "follow_up_date"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "person_id"
  end

  create_table "notes", force: :cascade do |t|
    t.integer  "noteable_id"
    t.string   "noteable_type"
    t.text     "body"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "notes", ["user_id"], name: "index_notes_on_user_id"

  create_table "people", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "company_id"
  end

  create_table "phone_numbers", force: :cascade do |t|
    t.string   "number"
    t.string   "number_type"
    t.integer  "phone_numberable_id"
    t.string   "phone_numberable_type"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
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
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "is_a_boss"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
