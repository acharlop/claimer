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

ActiveRecord::Schema.define(version: 20160620195044) do

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

  create_table "companies", force: :cascade do |t|
    t.string   "name",              null: false
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "company_type_id"
    t.string   "company_list_type"
    t.integer  "company_list_id"
    t.index ["company_list_type", "company_list_id"], name: "index_companies_on_company_list_type_and_company_list_id", using: :btree
    t.index ["company_type_id"], name: "index_companies_on_company_type_id", using: :btree
    t.index ["name"], name: "index_companies_on_name", using: :btree
  end

  create_table "company_types", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "first",       null: false
    t.string   "last",        null: false
    t.integer  "position_id"
    t.integer  "company_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["company_id"], name: "index_contacts_on_company_id", using: :btree
    t.index ["first"], name: "index_contacts_on_first", using: :btree
    t.index ["last"], name: "index_contacts_on_last", using: :btree
    t.index ["position_id"], name: "index_contacts_on_position_id", using: :btree
  end

  create_table "emails", force: :cascade do |t|
    t.string   "email",                               null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "description",    default: "Personal", null: false
    t.string   "mailboxes_type"
    t.integer  "mailboxes_id"
    t.index ["mailboxes_type", "mailboxes_id"], name: "index_emails_on_mailboxes_type_and_mailboxes_id", using: :btree
  end

  create_table "loss_types", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_loss_types_on_name", using: :btree
  end

  create_table "losses", force: :cascade do |t|
    t.date     "dol",          null: false
    t.string   "description",  null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "loss_type_id"
    t.integer  "address_id"
    t.index ["address_id"], name: "index_losses_on_address_id", using: :btree
    t.index ["description"], name: "index_losses_on_description", using: :btree
    t.index ["dol"], name: "index_losses_on_dol", using: :btree
    t.index ["loss_type_id"], name: "index_losses_on_loss_type_id", using: :btree
  end

  create_table "phones", force: :cascade do |t|
    t.string   "number",                           null: false
    t.string   "description",     default: "Cell", null: false
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "phone_user_type"
    t.integer  "phone_user_id"
    t.index ["phone_user_type", "phone_user_id"], name: "index_phones_on_phone_user_type_and_phone_user_id", using: :btree
  end

  create_table "positions", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_positions_on_name", using: :btree
  end

  add_foreign_key "clients", "addresses"
  add_foreign_key "companies", "company_types"
  add_foreign_key "contacts", "companies"
  add_foreign_key "contacts", "positions"
  add_foreign_key "losses", "addresses"
  add_foreign_key "losses", "loss_types"
end
