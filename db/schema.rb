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

ActiveRecord::Schema.define(version: 20190326134404) do

  create_table "eye_colours", force: :cascade do |t|
    t.string "colour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "game_characters", force: :cascade do |t|
    t.integer "player_id"
    t.integer "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.integer "score"
    t.integer "round"
    t.integer "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hair_colours", force: :cascade do |t|
    t.string "colour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "occupations", force: :cascade do |t|
    t.string "occupation"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.integer "hair_colour_id"
    t.integer "eye_colour_id"
    t.string "glasses"
    t.string "facial_hair"
    t.string "alive", default: "yes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "top_score"
    t.string "gender"
    t.string "wears_hat"
    t.integer "occupation_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
