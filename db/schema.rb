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

ActiveRecord::Schema.define(version: 20151210032228) do

  create_table "comments", force: :cascade do |t|
    t.integer  "photo_id"
    t.text     "body"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: :cascade do |t|
    t.string   "image_name"
    t.string   "artwork_title"
    t.string   "image_url"
    t.string   "artist"
    t.string   "theme"
    t.string   "mood"
    t.text     "primary_color"
    t.text     "secondary_color"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "photo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "image_id"
  end

  create_table "photos", force: :cascade do |t|
    t.text     "caption"
    t.string   "image"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_images", force: :cascade do |t|
    t.integer  "image_id"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "image_url"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "project_title"
    t.string   "theme"
    t.string   "mood"
    t.string   "primary_color"
    t.string   "secondary_color"
    t.string   "project_template"
    t.boolean  "private"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "username"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "avatar"
    t.integer  "user_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
