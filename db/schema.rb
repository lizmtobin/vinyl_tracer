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

ActiveRecord::Schema.define(version: 2021_08_26_193747) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.bigint "artist_id", null: false
    t.string "album_name"
    t.string "artwork_url"
    t.string "record_label"
    t.bigint "seller_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "producers", default: [], array: true
    t.text "genre", default: [], array: true
    t.string "year"
    t.text "tracks", default: [], array: true
    t.index ["artist_id"], name: "index_albums_on_artist_id"
    t.index ["seller_id"], name: "index_albums_on_seller_id"
  end

  create_table "artists", force: :cascade do |t|
    t.string "artist_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "band_members", default: [], array: true
  end

  create_table "associated_acts", force: :cascade do |t|
    t.bigint "artist_id", null: false
    t.bigint "album_id", null: false
    t.text "connection_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["album_id"], name: "index_associated_acts_on_album_id"
    t.index ["artist_id"], name: "index_associated_acts_on_artist_id"
  end

  create_table "favourites", force: :cascade do |t|
    t.bigint "album_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["album_id"], name: "index_favourites_on_album_id"
    t.index ["user_id"], name: "index_favourites_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "album_id", null: false
    t.bigint "user_id", null: false
    t.integer "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "comment"
    t.index ["album_id"], name: "index_reviews_on_album_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "sellers", force: :cascade do |t|
    t.string "seller_name"
    t.string "location"
    t.string "seller_url"
    t.integer "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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

  add_foreign_key "albums", "artists"
  add_foreign_key "albums", "sellers"
  add_foreign_key "associated_acts", "albums"
  add_foreign_key "associated_acts", "artists"
  add_foreign_key "favourites", "albums"
  add_foreign_key "favourites", "users"
  add_foreign_key "reviews", "albums"
  add_foreign_key "reviews", "users"
end
