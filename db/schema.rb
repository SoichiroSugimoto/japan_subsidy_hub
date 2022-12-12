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

ActiveRecord::Schema.define(version: 2022_12_11_173422) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "business_stages", force: :cascade do |t|
    t.string "name", null: false
    t.integer "category", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "industories", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "issues", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "subsidies", force: :cascade do |t|
    t.string "name", null: false
    t.string "japanese_name", null: false
    t.string "explanation", null: false
    t.string "summary", null: false
    t.string "link", null: false
    t.boolean "soft_delete", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "subsidy_business_stages", force: :cascade do |t|
    t.integer "subsidy_id"
    t.integer "business_stage_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_stage_id"], name: "index_subsidy_business_stages_on_business_stage_id"
    t.index ["subsidy_id", "business_stage_id"], name: "sb_index", unique: true
    t.index ["subsidy_id"], name: "index_subsidy_business_stages_on_subsidy_id"
  end

  create_table "subsidy_industories", force: :cascade do |t|
    t.integer "subsidy_id"
    t.integer "industory_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["industory_id"], name: "index_subsidy_industories_on_industory_id"
    t.index ["subsidy_id", "industory_id"], name: "index_subsidy_industories_on_subsidy_id_and_industory_id", unique: true
    t.index ["subsidy_id"], name: "index_subsidy_industories_on_subsidy_id"
  end

  create_table "subsidy_issues", force: :cascade do |t|
    t.integer "subsidy_id"
    t.integer "issue_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["issue_id"], name: "index_subsidy_issues_on_issue_id"
    t.index ["subsidy_id", "issue_id"], name: "index_subsidy_issues_on_subsidy_id_and_issue_id", unique: true
    t.index ["subsidy_id"], name: "index_subsidy_issues_on_subsidy_id"
  end

  create_table "subsidy_support_types", force: :cascade do |t|
    t.integer "subsidy_id"
    t.integer "support_type_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["subsidy_id", "support_type_id"], name: "index_subsidy_support_types_on_subsidy_id_and_support_type_id", unique: true
    t.index ["subsidy_id"], name: "index_subsidy_support_types_on_subsidy_id"
    t.index ["support_type_id"], name: "index_subsidy_support_types_on_support_type_id"
  end

  create_table "support_types", force: :cascade do |t|
    t.string "name", null: false
    t.integer "category", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
