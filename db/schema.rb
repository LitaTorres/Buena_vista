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

ActiveRecord::Schema[7.0].define(version: 2023_09_01_055437) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buildings", force: :cascade do |t|
    t.string "name"
    t.string "street"
    t.string "number"
    t.string "city"
    t.string "commune"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "buildings_services", id: false, force: :cascade do |t|
    t.bigint "building_id", null: false
    t.bigint "service_id", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "phone"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_clients_on_user_id"
  end

  create_table "departments", force: :cascade do |t|
    t.integer "price"
    t.integer "number"
    t.string "bedroom"
    t.string "bathroom"
    t.string "image"
    t.bigint "client_id", null: false
    t.bigint "building_id", null: false
    t.bigint "state_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_departments_on_building_id"
    t.index ["client_id"], name: "index_departments_on_client_id"
    t.index ["state_id"], name: "index_departments_on_state_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "pool"
    t.string "barbecue"
    t.string "gym"
    t.string "green_areas"
    t.string "childish_games"
    t.string "parking_lots"
    t.string "pet_friendly"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "available"
    t.string "rent"
    t.string "sale"
    t.string "leased"
    t.string "sold"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "clients", "users"
  add_foreign_key "departments", "buildings"
  add_foreign_key "departments", "clients"
  add_foreign_key "departments", "states"
end
