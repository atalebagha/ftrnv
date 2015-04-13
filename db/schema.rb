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

ActiveRecord::Schema.define(version: 20150331205058) do

  create_table "clients", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "code",         limit: 255
    t.boolean  "active",       limit: 1
    t.text     "description",  limit: 65535
    t.integer  "lock_version", limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.string   "reference",    limit: 255
    t.string   "title",        limit: 255
    t.date     "start"
    t.integer  "length",       limit: 4
    t.integer  "vacationdays", limit: 4
    t.integer  "holidays",     limit: 4
    t.integer  "visadays",     limit: 4
    t.string   "employeeid",   limit: 255
    t.integer  "salary",       limit: 4
    t.boolean  "housing",      limit: 1
    t.boolean  "car",          limit: 1
    t.integer  "project_id",   limit: 4
    t.string   "position",     limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "user_id",      limit: 4
  end

  create_table "entries", force: :cascade do |t|
    t.string   "type",               limit: 255
    t.date     "date"
    t.integer  "user_id",            limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.integer  "visa_id",            limit: 4
  end

  create_table "projects", force: :cascade do |t|
    t.integer  "customer_id",    limit: 4
    t.boolean  "active",         limit: 1
    t.string   "name",           limit: 255
    t.string   "code",           limit: 255
    t.text     "description",    limit: 65535
    t.integer  "locked_version", limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "client_id",      limit: 4
  end

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
    t.string   "status",             limit: 255
  end

  create_table "timesheet_rows", force: :cascade do |t|
    t.integer  "timesheet_id", limit: 4
    t.integer  "type",         limit: 4
    t.float    "hours",        limit: 24
    t.float    "days",         limit: 24
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "timesheets", force: :cascade do |t|
    t.integer  "project_id",      limit: 4
    t.integer  "month",           limit: 4
    t.integer  "year",            limit: 4
    t.text     "description",     limit: 65535
    t.boolean  "committed",       limit: 1
    t.datetime "committed_at"
    t.integer  "lock_version",    limit: 4
    t.datetime "start_day_cache"
    t.string   "auto_sort",       limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
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
    t.integer  "admin",                  limit: 4
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "visa_requests", force: :cascade do |t|
    t.string   "code",        limit: 255
    t.date     "date"
    t.string   "purpose",     limit: 255
    t.integer  "project_id",  limit: 4
    t.integer  "user_id",     limit: 4
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "visas", force: :cascade do |t|
    t.string   "type",               limit: 255
    t.date     "start"
    t.integer  "length",             limit: 4
    t.integer  "stay",               limit: 4
    t.integer  "user_id",            limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
  end

end
