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

ActiveRecord::Schema.define(version: 20140409211701) do

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority"

  create_table "explanations", force: true do |t|
    t.integer  "problem_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "explanations", ["problem_id"], name: "index_explanations_on_problem_id"

  create_table "problems", force: true do |t|
    t.integer  "vehicle_model_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "problems", ["vehicle_model_id"], name: "index_problems_on_vehicle_model_id"

  create_table "solutions", force: true do |t|
    t.integer  "explanation_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "solutions", ["explanation_id"], name: "index_solutions_on_explanation_id"

  create_table "users", force: true do |t|
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vehicle_makes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vehicle_models", force: true do |t|
    t.integer  "vehicle_make_id"
    t.string   "name"
    t.string   "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vehicle_models", ["vehicle_make_id"], name: "index_vehicle_models_on_vehicle_make_id"

end
