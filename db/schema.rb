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

ActiveRecord::Schema.define(version: 2021_10_28_214532) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "unaccent"

  create_table "allocation_places", force: :cascade do |t|
    t.bigint "allocation_id"
    t.bigint "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["allocation_id"], name: "index_allocation_places_on_allocation_id"
    t.index ["place_id"], name: "index_allocation_places_on_place_id"
  end

  create_table "allocation_ramals", force: :cascade do |t|
    t.bigint "allocation_id"
    t.bigint "ramal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["allocation_id"], name: "index_allocation_ramals_on_allocation_id"
    t.index ["ramal_id"], name: "index_allocation_ramals_on_ramal_id"
  end

  create_table "allocation_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "allocations", force: :cascade do |t|
    t.bigint "employee_id"
    t.bigint "allocation_role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["allocation_role_id"], name: "index_allocations_on_allocation_role_id"
    t.index ["employee_id"], name: "index_allocations_on_employee_id"
  end

  create_table "buildings", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "department_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.bigint "department_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_type_id"], name: "index_departments_on_department_type_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "additional_contact_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_positions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "places", force: :cascade do |t|
    t.bigint "room_id"
    t.bigint "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_places_on_department_id"
    t.index ["room_id"], name: "index_places_on_room_id"
  end

  create_table "positions", force: :cascade do |t|
    t.bigint "employee_id"
    t.bigint "job_position_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_positions_on_employee_id"
    t.index ["job_position_id"], name: "index_positions_on_job_position_id"
  end

  create_table "ramals", force: :cascade do |t|
    t.string "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string "number"
    t.bigint "building_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_rooms_on_building_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "allocation_places", "allocations"
  add_foreign_key "allocation_places", "places"
  add_foreign_key "allocation_ramals", "allocations"
  add_foreign_key "allocation_ramals", "ramals"
  add_foreign_key "allocations", "allocation_roles"
  add_foreign_key "allocations", "employees"
  add_foreign_key "departments", "department_types"
  add_foreign_key "places", "departments"
  add_foreign_key "places", "rooms"
  add_foreign_key "positions", "employees"
  add_foreign_key "positions", "job_positions"
  add_foreign_key "rooms", "buildings"
end
