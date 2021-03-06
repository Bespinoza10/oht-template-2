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

ActiveRecord::Schema.define(version: 20170123225636) do

  create_table "contacts", force: :cascade do |t|
    t.string   "contact_title"
    t.string   "contact_subtitle"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "contact_bg_file_name"
    t.string   "contact_bg_content_type"
    t.integer  "contact_bg_file_size"
    t.datetime "contact_bg_updated_at"
  end

  create_table "contents", force: :cascade do |t|
    t.string   "name"
    t.string   "header_title"
    t.string   "services_title"
    t.string   "slogan_title"
    t.string   "about_title"
    t.text     "about_description"
    t.string   "contact_title"
    t.string   "contact_subtitle"
    t.string   "fb_username"
    t.string   "ig_username"
    t.string   "twitter_username"
    t.string   "in_username"
    t.string   "pin_username"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "header_bg_file_name"
    t.string   "header_bg_content_type"
    t.integer  "header_bg_file_size"
    t.datetime "header_bg_updated_at"
    t.string   "contact_bg_file_name"
    t.string   "contact_bg_content_type"
    t.integer  "contact_bg_file_size"
    t.datetime "contact_bg_updated_at"
  end

  create_table "footers", force: :cascade do |t|
    t.string   "fb_username"
    t.string   "ig_username"
    t.string   "twitter_username"
    t.string   "in_username"
    t.string   "pin_username"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "headers", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "header_bg_file_name"
    t.string   "header_bg_content_type"
    t.integer  "header_bg_file_size"
    t.datetime "header_bg_updated_at"
  end

  create_table "logos", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "portfolios", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "portfolios_img_file_name"
    t.string   "portfolios_img_content_type"
    t.integer  "portfolios_img_file_size"
    t.datetime "portfolios_img_updated_at"
  end

  create_table "services", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "services_img_file_name"
    t.string   "services_img_content_type"
    t.integer  "services_img_file_size"
    t.datetime "services_img_updated_at"
  end

  create_table "slogans", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "titles", force: :cascade do |t|
    t.string   "services_title"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "logo_name"
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
