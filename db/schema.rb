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

ActiveRecord::Schema.define(version: 2020_05_24_140047) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "allocation_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "allocations", force: :cascade do |t|
    t.bigint "employee_id"
    t.bigint "room_id"
    t.bigint "allocation_role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["allocation_role_id"], name: "index_allocations_on_allocation_role_id"
    t.index ["employee_id"], name: "index_allocations_on_employee_id"
    t.index ["room_id"], name: "index_allocations_on_room_id"
  end

  create_table "buildings", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "ramal"
    t.text "additional_contact_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees_job_positions", id: false, force: :cascade do |t|
    t.bigint "employee_id", null: false
    t.bigint "job_position_id", null: false
  end

  create_table "job_positions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "room_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.string "number"
    t.bigint "building_id"
    t.bigint "room_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_rooms_on_building_id"
    t.index ["room_type_id"], name: "index_rooms_on_room_type_id"
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

  add_foreign_key "allocations", "allocation_roles"
  add_foreign_key "allocations", "employees"
  add_foreign_key "allocations", "rooms"
  add_foreign_key "rooms", "buildings"
  add_foreign_key "rooms", "room_types"
end
