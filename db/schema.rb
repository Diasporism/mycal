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

ActiveRecord::Schema.define(:version => 20130709005250) do

  create_table "groups", :force => true do |t|
    t.integer  "user_id"
    t.string   "name",                :null => false
    t.text     "description",         :null => false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "phone_number",        :null => false
    t.string   "address",             :null => false
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "groups", ["user_id"], :name => "index_groups_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "username",         :null => false
    t.string   "email",            :null => false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
