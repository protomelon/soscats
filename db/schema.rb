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

ActiveRecord::Schema.define(version: 2019_10_31_072353) do

  create_table "breeds", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "temperament"
    t.string "origin"
    t.integer "stranger_friendly"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cats", force: :cascade do |t|
    t.string "name"
    t.integer "breed_id", null: false
    t.integer "tree_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["breed_id"], name: "index_cats_on_breed_id"
    t.index ["tree_id"], name: "index_cats_on_tree_id"
  end

  create_table "trees", force: :cascade do |t|
    t.string "botanical_name"
    t.string "common_name"
    t.string "neighbourhood"
    t.float "diameter"
    t.string "park"
    t.string "location_class"
    t.string "property_type"
    t.float "x"
    t.float "y"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "cats", "breeds"
  add_foreign_key "cats", "trees"
end
