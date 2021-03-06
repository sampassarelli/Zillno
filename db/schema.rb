# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_05_210914) do

  create_table "agents", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "years_experience"
    t.text "bio"
    t.string "picture"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "house_reviews", force: :cascade do |t|
    t.integer "buyer_id"
    t.integer "house_id"
    t.string "title"
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "toured"
  end

  create_table "houses", force: :cascade do |t|
    t.string "address"
    t.integer "price"
    t.integer "seller_id"
    t.integer "agent_id"
    t.string "picture"
    t.integer "bedrooms"
    t.float "bathrooms"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "latitude"
    t.float "longitude"
  end

  create_table "offers", force: :cascade do |t|
    t.integer "agent_id"
    t.integer "buyer_id"
    t.integer "house_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "amount"
  end

  create_table "tours", force: :cascade do |t|
    t.integer "agent_id"
    t.integer "buyer_id"
    t.integer "house_id"
    t.date "date"
    t.time "time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "user_name"
    t.string "img_url"
    t.boolean "is_seller", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.string "email"
  end

end
