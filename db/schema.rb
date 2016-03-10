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

ActiveRecord::Schema.define(version: 20160310002217) do

  create_table "Instructors", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "Instructor_user_id"
  end

  add_index "Instructors", ["Instructor_user_id", "user_id"], name: "index_Instructors_on_Instructor_user_id_and_user_id", unique: true
  add_index "Instructors", ["user_id", "Instructor_user_id"], name: "index_Instructors_on_user_id_and_Instructor_user_id", unique: true

  create_table "students", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "student_user_id"
  end

  add_index "students", ["student_user_id", "user_id"], name: "index_students_on_student_user_id_and_user_id", unique: true
  add_index "students", ["user_id", "student_user_id"], name: "index_students_on_user_id_and_student_user_id", unique: true

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.string   "user_role"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
