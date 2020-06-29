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

ActiveRecord::Schema.define(version: 2020_06_27_233810) do

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.boolean "approved_for_scout"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "category"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "script_locations", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "setting"
    t.integer "project_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_script_locations_on_project_id"
  end

  create_table "script_locations_locations", force: :cascade do |t|
    t.integer "script_location_id", null: false
    t.integer "location_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_script_locations_locations_on_location_id"
    t.index ["script_location_id"], name: "index_script_locations_locations_on_script_location_id"
  end

  add_foreign_key "script_locations", "projects"
  add_foreign_key "script_locations_locations", "locations"
  add_foreign_key "script_locations_locations", "script_locations"
end
