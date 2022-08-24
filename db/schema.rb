# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_08_22_203300) do
  create_table "airports", force: :cascade do |t|
    t.string "airport_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flights", force: :cascade do |t|
    t.datetime "start"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "departure_id", null: false
    t.integer "arrival_id", null: false
    t.integer "duration"
    t.integer "booking_id"
    t.index ["arrival_id"], name: "index_flights_on_arrival_id"
    t.index ["booking_id"], name: "index_flights_on_booking_id"
    t.index ["departure_id"], name: "index_flights_on_departure_id"
  end

  create_table "passengers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "booking_id", null: false
    t.string "name"
    t.string "email"
    t.index ["booking_id"], name: "index_passengers_on_booking_id"
  end

  add_foreign_key "flights", "airports", column: "arrival_id"
  add_foreign_key "flights", "airports", column: "departure_id"
  add_foreign_key "flights", "bookings"
  add_foreign_key "passengers", "bookings"
end
