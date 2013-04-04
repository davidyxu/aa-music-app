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

ActiveRecord::Schema.define(:version => 20130404210910) do

  create_table "artists", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "band_artists", :force => true do |t|
    t.integer  "artist_id"
    t.integer  "band_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "band_artists", ["artist_id"], :name => "index_band_artists_on_artist_id"
  add_index "band_artists", ["band_id"], :name => "index_band_artists_on_band_id"

  create_table "bands", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "recordings", :force => true do |t|
    t.string   "name"
    t.integer  "band_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "live"
    t.text     "description"
  end

  add_index "recordings", ["band_id"], :name => "index_recordings_on_band_id"

  create_table "singles", :force => true do |t|
    t.string   "name"
    t.integer  "recording_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "bonus"
  end

  add_index "singles", ["recording_id"], :name => "index_singles_on_recording_id"

end
