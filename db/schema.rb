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

ActiveRecord::Schema.define(version: 20140409204826) do

  create_table "lines", force: true do |t|
    t.integer  "quantity"
    t.integer  "amount"
    t.boolean  "taxable"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "title"
    t.integer  "repair_id"
  end

  create_table "repairs", force: true do |t|
    t.text     "notes"
    t.text     "symptoms"
    t.string   "item"
    t.string   "item_serial"
    t.boolean  "complete"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "customer"
    t.integer  "user_id"
    t.string   "contact"
    t.string   "status"
    t.decimal  "taxrate"
  end

  add_index "repairs", ["user_id"], name: "index_repairs_on_user_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
