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

ActiveRecord::Schema.define(version: 20131007131711) do

  create_table "comments", force: true do |t|
    t.string  "title"
    t.text    "body",        null: false
    t.integer "user_id",     null: false
    t.integer "tutorial_id", null: false
  end

  create_table "stages", force: true do |t|
    t.string   "subtitle",    null: false
    t.text     "content",     null: false
    t.integer  "color",       null: false
    t.integer  "tutorial_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tutorials", force: true do |t|
    t.string   "title",                   null: false
    t.text     "description",             null: false
    t.integer  "user_id",                 null: false
    t.integer  "stage_id",                null: false
    t.integer  "category_id",             null: false
    t.integer  "status",      default: 0, null: false
    t.text     "moderation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "moderator"
    t.boolean  "admin"
    t.date     "age",                                 null: false
    t.string   "name",                                null: false
    t.string   "username",                            null: false
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
