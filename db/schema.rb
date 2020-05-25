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

ActiveRecord::Schema.define(version: 2020_05_05_184602) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "quarantines", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "startdate"
    t.string "enddate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_quarantines_on_user_id"
  end

  create_table "symptoms", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "fever"
    t.string "cough"
    t.string "breath"
    t.string "throat"
    t.string "nose"
    t.string "other"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_symptoms_on_user_id"
  end

  create_table "user_symptoms", force: :cascade do |t|
    t.integer "user_id"
    t.integer "symptom_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.string "gender"
    t.integer "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "quarantines", "users"
  add_foreign_key "symptoms", "users"
end
