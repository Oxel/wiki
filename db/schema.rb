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

ActiveRecord::Schema.define(version: 20141114150937) do

  create_table "Mywikis_Users", id: false, force: true do |t|
    t.integer "user_id",   null: false
    t.integer "mywiki_id", null: false
  end

  add_index "Mywikis_Users", ["mywiki_id", "user_id"], name: "index_Mywikis_Users_on_mywiki_id_and_user_id"
  add_index "Mywikis_Users", ["user_id", "mywiki_id"], name: "index_Mywikis_Users_on_user_id_and_mywiki_id"

  create_table "collaborations", force: true do |t|
    t.integer  "user_id"
    t.integer  "mywiki_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "collaborations", ["mywiki_id"], name: "index_collaborations_on_mywiki_id"
  add_index "collaborations", ["user_id"], name: "index_collaborations_on_user_id"

  create_table "collaborators", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mywikis", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.boolean  "private",    default: false
  end

  add_index "mywikis", ["user_id"], name: "index_mywikis_on_user_id"

  create_table "subscriptions", force: true do |t|
    t.integer  "plan_id",               default: 1
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "stripe_customer_token"
  end

  create_table "users", force: true do |t|
    t.string   "name",                   default: "", null: false
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
