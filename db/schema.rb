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

ActiveRecord::Schema.define(:version => 20111017142120) do

  create_table "location_types", :force => true do |t|
    t.integer  "tagging_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "location_types", ["tagging_id"], :name => "index_location_types_on_tagging_id"

  create_table "locations", :force => true do |t|
    t.integer  "location_type_id"
    t.string   "lat"
    t.string   "long"
    t.string   "close_mon"
    t.string   "close_tue"
    t.string   "close_wed"
    t.string   "close_thu"
    t.string   "close_fri"
    t.string   "close_sat"
    t.string   "close_sun"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locations", ["location_type_id"], :name => "index_locations_on_location_type_id"

  create_table "taggings", :force => true do |t|
    t.integer  "location_type_id"
    t.integer  "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "taggings", ["location_type_id"], :name => "index_taggings_on_location_type_id"
  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"

  create_table "tags", :force => true do |t|
    t.integer  "tagging_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tags", ["tagging_id"], :name => "index_tags_on_tagging_id"

end
