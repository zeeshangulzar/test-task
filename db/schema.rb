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

ActiveRecord::Schema.define(version: 2021_05_23_054425) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "api_responses", force: :cascade do |t|
    t.jsonb "response"
    t.string "center", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["center"], name: "index_api_responses_on_center"
  end

  create_table "medical_tests", force: :cascade do |t|
    t.boolean "positive"
    t.string "test_type"
    t.datetime "tested_at"
    t.integer "testing_center_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["test_type"], name: "index_medical_tests_on_test_type"
    t.index ["testing_center_id"], name: "index_medical_tests_on_testing_center_id"
    t.index ["user_id"], name: "index_medical_tests_on_user_id"
  end

  create_table "testing_centers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "medical_tests", "testing_centers", on_delete: :cascade
  add_foreign_key "medical_tests", "users", on_delete: :cascade
end
