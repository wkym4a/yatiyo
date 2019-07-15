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

ActiveRecord::Schema.define(version: 2019_07_15_063656) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "empty_rooms", force: :cascade do |t|
    t.integer "status", default: 0, null: false
    t.integer "arrangement", null: false
    t.string "name", limit: 40, null: false
    t.string "number", limit: 20, null: false
    t.integer "leave_status", default: 0, null: false
    t.date "day_to_leave"
    t.string "benefit", null: false
    t.string "day_to_enter", null: false
    t.float "area", null: false
    t.integer "rent", null: false
    t.integer "common_fee"
    t.integer "thanks_money_status", default: 0, null: false
    t.integer "thanks_money"
    t.float "thanks_money_month"
    t.integer "deposit_status", default: 0, null: false
    t.integer "deposit"
    t.float "deposit_month"
    t.string "station", limit: 120, null: false
    t.integer "parking_status", default: 0, null: false
    t.integer "parking"
    t.integer "pet", null: false
    t.integer "gas", null: false
    t.string "memo", null: false
    t.string "key", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "url_info"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
