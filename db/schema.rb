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

ActiveRecord::Schema.define(version: 2018_12_29_084333) do

  create_table "mission_places", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.integer "position"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_mission_places_on_user_id"
  end

  create_table "mission_reasons", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.integer "position"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_mission_reasons_on_user_id"
  end

  create_table "mission_roads", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.decimal "km", precision: 8, scale: 2, default: "0.0"
    t.decimal "highway_cost", precision: 8, scale: 2, default: "0.0"
    t.integer "position"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_mission_roads_on_user_id"
  end

  create_table "mission_structures", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.integer "position"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_mission_structures_on_user_id"
  end

  create_table "reimbursments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "name"
    t.bigint "transport_type_id"
    t.bigint "veichle_id"
    t.bigint "mission_place_id"
    t.bigint "mission_structure_id"
    t.bigint "mission_reason_id"
    t.date "departure_date"
    t.date "return_date"
    t.date "request_date"
    t.date "reimbursment_date"
    t.bigint "mission_road_id"
    t.decimal "parking_cost", precision: 8, scale: 2, default: "0.0"
    t.decimal "food_cost", precision: 8, scale: 2, default: "0.0"
    t.decimal "room_cost", precision: 8, scale: 2, default: "0.0"
    t.decimal "ticket_cost", precision: 8, scale: 2, default: "0.0"
    t.decimal "generic_cost", precision: 8, scale: 2, default: "0.0"
    t.decimal "costkm", precision: 8, scale: 2, default: "0.0"
    t.string "secretary"
    t.string "institute"
    t.string "address"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mission_place_id"], name: "index_reimbursments_on_mission_place_id"
    t.index ["mission_reason_id"], name: "index_reimbursments_on_mission_reason_id"
    t.index ["mission_road_id"], name: "index_reimbursments_on_mission_road_id"
    t.index ["mission_structure_id"], name: "index_reimbursments_on_mission_structure_id"
    t.index ["transport_type_id"], name: "index_reimbursments_on_transport_type_id"
    t.index ["user_id"], name: "index_reimbursments_on_user_id"
    t.index ["veichle_id"], name: "index_reimbursments_on_veichle_id"
  end

  create_table "transport_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_transport_types_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.boolean "admin"
    t.boolean "manager"
    t.boolean "regular"
    t.string "name"
    t.string "institute"
    t.string "office"
    t.string "category"
    t.string "address"
    t.string "phone"
    t.string "pec"
    t.string "secretary"
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

  create_table "veichles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "producer"
    t.string "licenceplate"
    t.integer "position"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_veichles_on_user_id"
  end

  add_foreign_key "mission_places", "users"
  add_foreign_key "mission_reasons", "users"
  add_foreign_key "mission_roads", "users"
  add_foreign_key "mission_structures", "users"
  add_foreign_key "reimbursments", "mission_places"
  add_foreign_key "reimbursments", "mission_reasons"
  add_foreign_key "reimbursments", "mission_roads"
  add_foreign_key "reimbursments", "mission_structures"
  add_foreign_key "reimbursments", "transport_types"
  add_foreign_key "reimbursments", "users"
  add_foreign_key "reimbursments", "veichles"
  add_foreign_key "transport_types", "users"
  add_foreign_key "veichles", "users"
end
