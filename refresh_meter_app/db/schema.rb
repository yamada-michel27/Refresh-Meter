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

ActiveRecord::Schema[8.1].define(version: 2026_05_04_103322) do
  create_table "condition_logs", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "daytime_outings", default: 0, null: false
    t.integer "fatigue", null: false
    t.date "last_karaoke_date"
    t.date "last_movie_date"
    t.date "last_sauna_date"
    t.string "mood", null: false
    t.integer "night_outings", default: 0, null: false
    t.datetime "recorded_at", null: false
    t.decimal "sleep_hours", precision: 4, scale: 1, null: false
    t.integer "stress", null: false
    t.datetime "updated_at", null: false
    t.integer "work_difficulty", null: false
  end
end
