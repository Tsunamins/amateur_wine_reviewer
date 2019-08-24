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

ActiveRecord::Schema.define(version: 7) do

  create_table "ratings", force: :cascade do |t|
    t.integer "color"
    t.integer "taste"
    t.integer "balance"
    t.integer "overall_like"
    t.integer "someone_else_like"
    t.integer "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "fruit"
    t.string "tannin"
    t.string "body"
    t.string "balance"
    t.string "acidity"
    t.string "flavors"
    t.string "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "color"
    t.integer "taste"
    t.integer "balance_rating"
    t.integer "wine_experience"
    t.integer "someone_else_like"
    t.integer "total"
    t.integer "user_id"
    t.integer "wine_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "favorite_wine"
    t.date "birthdate"
    t.string "image"
    t.string "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wines", force: :cascade do |t|
    t.string "wine_name"
    t.string "vineyard"
    t.string "winemaker"
    t.string "story"
    t.string "grape"
    t.string "region"
    t.string "style"
    t.integer "vintage"
    t.integer "alcohol"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
