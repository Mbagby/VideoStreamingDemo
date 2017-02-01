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

ActiveRecord::Schema.define(version: 20160929183509) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.integer  "category_id"
    t.text     "title"
    t.text     "description"
    t.text     "icon"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "snap_shot"
  end

  
  create_table "episodes", force: :cascade do |t|
    t.integer  "episode_id"
    t.integer  "series_id"
    t.integer  "topic_id"
    t.integer  "category_id"
    t.text     "title"
    t.text     "description"
    t.text     "icon"
    t.integer  "rating"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "snap_shot"
  end

  create_table "questions", force: :cascade do |t|
    t.integer  "question_id"
    t.integer  "quiz_id"
    t.integer  "episode_id"
    t.integer  "series_id"
    t.integer  "topic_id"
    t.integer  "category_id"
    t.text     "title"
    t.text     "question"
    t.text     "icon"
    t.integer  "value"
    t.text     "snap_shot"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "quizzes", force: :cascade do |t|
    t.integer  "quiz_id"
    t.integer  "episode_id"
    t.integer  "series_id"
    t.integer  "topic_id"
    t.integer  "category_id"
    t.text     "title"
    t.text     "description"
    t.text     "icon"
    t.integer  "score"
    t.text     "snap_shot"
    t.text     "answer"
    t.integer  "correctness"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "seasons", force: :cascade do |t|
    t.integer  "series_id"
    t.integer  "topic_id"
    t.integer  "category_id"
    t.text     "title"
    t.text     "description"
    t.text     "icon"
    t.integer  "rating"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "snap_shot"
  end

  create_table "topics", force: :cascade do |t|
    t.integer  "category_id"
    t.text     "title"
    t.text     "description"
    t.text     "icon"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "topic_id"
    t.string   "snap_shot"
  end

  create_table "users", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "company_id"
    t.string   "employee_id"
    t.string   "email"
    t.string   "password"
    t.string   "password_digest"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end
