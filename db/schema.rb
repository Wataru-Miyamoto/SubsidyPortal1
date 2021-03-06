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

ActiveRecord::Schema.define(version: 2021_06_19_133243) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "cities", force: :cascade do |t|
    t.string "city_name"
    t.string "city_code"
    t.integer "pref_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pref_id"], name: "index_cities_on_pref_id"
  end

  create_table "city_topics", force: :cascade do |t|
    t.string "title"
    t.string "period"
    t.string "content"
    t.string "target"
    t.string "counter"
    t.string "link"
    t.boolean "emergency", default: false, null: false
    t.boolean "primary_sector", default: false, null: false
    t.boolean "other_sector", default: false, null: false
    t.boolean "emigration", default: false, null: false
    t.boolean "senior", default: false, null: false
    t.boolean "parenting", default: false, null: false
    t.boolean "other", default: true, null: false
    t.integer "city_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_city_topics_on_city_id"
  end

  create_table "drafts", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.string "period"
    t.string "content"
    t.string "target"
    t.string "counter"
    t.string "link"
    t.boolean "emergency", default: false, null: false
    t.boolean "primary_sector", default: false, null: false
    t.boolean "other_sector", default: false, null: false
    t.boolean "emigration", default: false, null: false
    t.boolean "senior", default: false, null: false
    t.boolean "parenting", default: false, null: false
    t.boolean "other", default: true, null: false
    t.string "select"
    t.string "comment"
    t.string "draft_approver_id"
    t.string "draft_status", default: "???????????????"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_drafts_on_user_id"
  end

  create_table "gov_topics", force: :cascade do |t|
    t.string "gov_name"
    t.string "title"
    t.string "period"
    t.string "content"
    t.string "target"
    t.string "counter"
    t.string "link"
    t.boolean "emergency", default: false, null: false
    t.boolean "primary_sector", default: false, null: false
    t.boolean "other_sector", default: false, null: false
    t.boolean "emigration", default: false, null: false
    t.boolean "senior", default: false, null: false
    t.boolean "parenting", default: false, null: false
    t.boolean "other", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pref_topics", force: :cascade do |t|
    t.string "title"
    t.string "period"
    t.string "content"
    t.string "target"
    t.string "counter"
    t.string "link"
    t.boolean "emergency", default: false, null: false
    t.boolean "primary_sector", default: false, null: false
    t.boolean "other_sector", default: false, null: false
    t.boolean "emigration", default: false, null: false
    t.boolean "senior", default: false, null: false
    t.boolean "parenting", default: false, null: false
    t.boolean "other", default: true, null: false
    t.integer "pref_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pref_id"], name: "index_pref_topics_on_pref_id"
  end

  create_table "prefs", force: :cascade do |t|
    t.string "pref_name"
    t.string "pref_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "password", default: "", null: false
    t.string "password_confirmation", default: "", null: false
    t.boolean "admin", default: false
    t.boolean "editor", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
