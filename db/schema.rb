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

ActiveRecord::Schema.define(version: 20171114061313) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "cel"
    t.string "address"
    t.string "email"
    t.text "observations"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "contact_num"
    t.string "age"
    t.string "driver_license"
    t.string "ine"
    t.text "observations"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "price_id"
    t.index ["price_id"], name: "index_drivers_on_price_id"
  end

  create_table "prices", force: :cascade do |t|
    t.string "city_origin"
    t.string "city_destiny"
    t.string "total_days"
    t.string "first_payment"
    t.string "total_payment"
    t.text "observations"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.bigint "client_id"
    t.index ["client_id"], name: "index_prices_on_client_id"
  end

  add_foreign_key "drivers", "prices"
  add_foreign_key "prices", "clients"
end
