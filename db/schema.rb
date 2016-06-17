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

ActiveRecord::Schema.define(version: 20160617205335) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "street",                              null: false
    t.string   "apartment"
    t.integer  "zip",                                 null: false
    t.string   "city",                                null: false
    t.string   "state",      limit: 2, default: "FL", null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "first",      null: false
    t.string   "last",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "address_id"
    t.index ["address_id"], name: "index_clients_on_address_id", using: :btree
    t.index ["first"], name: "index_clients_on_first", using: :btree
    t.index ["last"], name: "index_clients_on_last", using: :btree
  end

  create_table "emails", force: :cascade do |t|
    t.string   "email",                            null: false
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "description", default: "Personal", null: false
  end

  create_table "phones", force: :cascade do |t|
    t.string   "number",                              null: false
    t.string   "description",        default: "Cell", null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "phone_numbers_type"
    t.integer  "phone_numbers_id"
    t.index ["phone_numbers_type", "phone_numbers_id"], name: "index_phones_on_phone_numbers_type_and_phone_numbers_id", using: :btree
  end

  add_foreign_key "clients", "addresses"
end
