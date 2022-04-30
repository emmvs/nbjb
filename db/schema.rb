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

ActiveRecord::Schema.define(version: 2022_04_01_161219) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bitchbooks", force: :cascade do |t|
    t.string "topic"
    t.string "title"
    t.text "text"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_bitchbooks_on_user_id"
  end

  create_table "games", force: :cascade do |t|
    t.interval "duration"
    t.string "winner"
    t.string "looser"
    t.bigint "user_id", null: false
    t.bigint "night_id", null: false
    t.bigint "place_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["night_id"], name: "index_games_on_night_id"
    t.index ["place_id"], name: "index_games_on_place_id"
    t.index ["user_id"], name: "index_games_on_user_id"
  end

  create_table "nights", force: :cascade do |t|
    t.date "date"
    t.time "time"
    t.bigint "user_id", null: false
    t.bigint "place_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["place_id"], name: "index_nights_on_place_id"
    t.index ["user_id"], name: "index_nights_on_user_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "asshole_score"
    t.integer "barkeeper_rating"
    t.integer "dating_rating"
    t.integer "bathroom_rating"
    t.integer "beer_price"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_places_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bitchbooks", "users"
  add_foreign_key "games", "nights"
  add_foreign_key "games", "places"
  add_foreign_key "games", "users"
  add_foreign_key "nights", "places"
  add_foreign_key "nights", "users"
  add_foreign_key "places", "users"
end
