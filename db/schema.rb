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

ActiveRecord::Schema.define(version: 2020_02_17_124122) do

  create_table "banks", force: :cascade do |t|
    t.string "image"
    t.string "bank"
    t.string "name"
    t.string "url"
    t.string "region1"
    t.string "region2"
    t.string "region3"
    t.string "region4"
    t.string "region5"
    t.string "region6"
    t.integer "rank"
    t.float "price1"
    t.float "price2"
    t.float "price3"
    t.float "price4"
    t.boolean "contactOptions"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "guests", force: :cascade do |t|
    t.integer "money"
    t.integer "age"
    t.boolean "sex"
    t.string "region"
    t.string "birthday"
    t.float "price1"
    t.float "price2"
    t.float "price3"
    t.float "price4"
    t.boolean "contactOptions"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recoms", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.text "address"
    t.string "phone"
    t.decimal "latitude", precision: 15, scale: 10
    t.decimal "longitude", precision: 15, scale: 10
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
