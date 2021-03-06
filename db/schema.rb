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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140513103401) do

  create_table "brackets", :force => true do |t|
    t.string   "name"
    t.boolean  "running"
    t.boolean  "over"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "goals", :force => true do |t|
    t.datetime "date_time"
    t.integer  "player_id"
    t.integer  "match_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "group_stats", :force => true do |t|
    t.integer  "group_id"
    t.integer  "matches_played"
    t.integer  "wins"
    t.integer  "draws"
    t.integer  "loses"
    t.integer  "goals_favor"
    t.integer  "goals_against"
    t.integer  "points"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "team_id"
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.integer  "bracket_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "matches", :force => true do |t|
    t.datetime "date"
    t.integer  "stadium_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.boolean  "playing"
    t.boolean  "played"
  end

  create_table "matches_teams", :force => true do |t|
    t.integer "match_id"
    t.integer "team_id"
  end

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "microposts", ["user_id", "created_at"], :name => "index_microposts_on_user_id_and_created_at"

  create_table "players", :force => true do |t|
    t.integer  "team_id"
    t.string   "name"
    t.date     "birth_date"
    t.integer  "appearances"
    t.integer  "career_goals"
    t.string   "avatar_url"
    t.text     "description"
    t.string   "position"
    t.string   "club"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "relationships", :force => true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "relationships", ["followed_id"], :name => "index_relationships_on_followed_id"
  add_index "relationships", ["follower_id", "followed_id"], :name => "index_relationships_on_follower_id_and_followed_id", :unique => true
  add_index "relationships", ["follower_id"], :name => "index_relationships_on_follower_id"

  create_table "stadia", :force => true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "owner_club"
    t.integer  "capacity"
    t.string   "image_url"
    t.text     "description"
    t.boolean  "status"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "teams", :force => true do |t|
    t.integer  "appearances"
    t.integer  "titles"
    t.integer  "fifa_ranking"
    t.string   "name"
    t.string   "flag_url"
    t.string   "logo_url"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "group_stats_id"
    t.string   "team_url"
    t.integer  "match_id"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
