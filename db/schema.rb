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

ActiveRecord::Schema.define(version: 20171115232903) do

  create_table "areas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bathrooms", force: :cascade do |t|
    t.string "name"
    t.float "avg_rate"
    t.float "avg_clean"
    t.float "avg_traffic"
    t.string "gender"
    t.integer "building_id"
    t.integer "area_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_bathrooms_on_area_id"
    t.index ["building_id"], name: "index_bathrooms_on_building_id"
  end

  create_table "buildings", force: :cascade do |t|
    t.string "name"
    t.integer "area_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_buildings_on_area_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id"
    t.integer "rate"
    t.integer "clean"
    t.integer "traffic"
    t.string "content"
    t.integer "bathroom_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bathroom_id"], name: "index_reviews_on_bathroom_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end