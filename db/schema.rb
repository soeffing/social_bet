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

ActiveRecord::Schema.define(:version => 20130405144338) do

  create_table "bettles", :force => true do |t|
    t.integer  "maker_id"
    t.integer  "taker_id"
    t.integer  "fixture_id"
    t.boolean  "free_bet"
    t.decimal  "win_maker",   :precision => 10, :scale => 0
    t.decimal  "win_taker",   :precision => 10, :scale => 0
    t.boolean  "accepted"
    t.datetime "expire_time"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  create_table "fixtures", :force => true do |t|
    t.integer  "league_id"
    t.integer  "team_1_id"
    t.integer  "team_2_id"
    t.datetime "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "leagues", :force => true do |t|
    t.string   "league_name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "teams", :force => true do |t|
    t.string   "team_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "uid"
    t.string   "provider"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_token_expires_at"
    t.decimal  "balance",                :precision => 10, :scale => 0
    t.datetime "created_at",                                            :null => false
    t.datetime "updated_at",                                            :null => false
  end

end
