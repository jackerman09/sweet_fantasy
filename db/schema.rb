# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20131026024307) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: true do |t|
    t.integer  "home_team_id"
    t.integer  "away_team_id"
    t.date     "played_on"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "player_game_stats", force: true do |t|
    t.integer  "player_id"
    t.integer  "game_id"
    t.integer  "user_votes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "position"
    t.integer  "team_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.boolean  "injured"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "players", ["position", "team_id"], name: "index_players_on_position_and_team_id", using: :btree

  create_table "teams", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
