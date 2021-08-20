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

ActiveRecord::Schema.define(version: 2021_08_19_005535) do

  create_table "engineer_skils", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "engineer_id", null: false
    t.bigint "skil_id", null: false
    t.integer "status", null: false
    t.integer "term"
    t.text "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["engineer_id"], name: "index_engineer_skils_on_engineer_id"
    t.index ["skil_id"], name: "index_engineer_skils_on_skil_id"
  end

  create_table "engineers", charset: "utf8mb4", force: :cascade do |t|
    t.integer "employee_code", null: false
    t.string "first_name", null: false
    t.string "given_name", null: false
    t.string "first_name_yomi", null: false
    t.string "given_name_yomi", null: false
    t.integer "company_code", null: false
    t.integer "department_code"
    t.integer "birthday", null: false
    t.string "company_mail", null: false
    t.string "gmail"
    t.string "phone_number"
    t.integer "operation_flag"
    t.integer "permission_level"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "skils", charset: "utf8mb4", force: :cascade do |t|
    t.string "skil", null: false
    t.integer "type", null: false
    t.boolean "delete_flag"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "engineer_skils", "engineers"
  add_foreign_key "engineer_skils", "skils"
end
