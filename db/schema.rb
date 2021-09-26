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

ActiveRecord::Schema.define(version: 2021_09_26_113532) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "comic_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["comic_id"], name: "index_characters_on_comic_id"
  end

  create_table "comics", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "issueNumber"
    t.string "format"
    t.integer "pageCount"
    t.string "thumbnail"
    t.bigint "serie_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["serie_id"], name: "index_comics_on_serie_id"
  end

  create_table "series", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "startYear"
    t.integer "endYear"
    t.string "thumbnail"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "characters", "comics"
  add_foreign_key "comics", "series", column: "serie_id"
end
