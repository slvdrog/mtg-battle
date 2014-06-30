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

ActiveRecord::Schema.define(version: 20140630152823) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "battles", force: true do |t|
    t.integer  "card1_votes"
    t.integer  "card2_votes"
    t.integer  "card1_id"
    t.integer  "card2_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "battles", ["card1_id", "card2_id"], name: "index_battles_on_card1_id_and_card2_id", using: :btree
  add_index "battles", ["card1_id"], name: "card1_id_ix", using: :btree
  add_index "battles", ["card2_id"], name: "card2_id_ix", using: :btree

  create_table "cards", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

end
