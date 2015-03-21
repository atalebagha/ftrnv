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

ActiveRecord::Schema.define(version: 20150321080020) do

  create_table "requests", force: :cascade do |t|
    t.integer  "type_id",            limit: 4
    t.integer  "contract_id",        limit: 4
    t.date     "start"
    t.integer  "days",               limit: 4
    t.integer  "vacationdays",       limit: 4
    t.integer  "exitdays",           limit: 4
    t.integer  "otherdays",          limit: 4
    t.date     "actualreturn"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "stamp_file_name",    limit: 255
    t.string   "stamp_content_type", limit: 255
    t.integer  "stamp_file_size",    limit: 4
    t.datetime "stamp_updated_at"
  end

  create_table "types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.boolean  "deduct",     limit: 1
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name",             limit: 255
    t.string   "last_name",              limit: 255
    t.string   "passport",               limit: 255
    t.string   "ppnumber",               limit: 255
    t.string   "ppcountry",              limit: 255
    t.date     "ppstart"
    t.date     "ppexpire"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
