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

ActiveRecord::Schema[7.0].define(version: 202207260131133) do
  create_table "cooks", force: :cascade do |t|
    t.string "cook_name"
    t.string "cook_adress"
    t.integer "cook_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_cooks_on_email", unique: true
    t.index ["reset_password_token"], name: "index_cooks_on_reset_password_token", unique: true
  end

  create_table "kitchen_owners", force: :cascade do |t|
    t.string "kitchen_name"
    t.string "string"
    t.string "kitchen_mail"
    t.integer "kitchen_number"
    t.string "kitchen_adress"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_kitchen_owners_on_email", unique: true
    t.index ["reset_password_token"], name: "index_kitchen_owners_on_reset_password_token", unique: true
  end

  create_table "kitchens", force: :cascade do |t|
    t.string "equipment"
    t.string "services"
    t.string "kitchen_adress"
    t.integer "kitchen_surface"
    t.string "kitchen_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.string "working_day"
    t.date "reserve_date"
    t.integer "reserve_price"
    t.integer "cook_id", null: false
    t.integer "kitchen_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cook_id"], name: "index_reservations_on_cook_id"
    t.index ["kitchen_id"], name: "index_reservations_on_kitchen_id"
  end

  add_foreign_key "reservations", "cooks"
  add_foreign_key "reservations", "kitchens"
end
