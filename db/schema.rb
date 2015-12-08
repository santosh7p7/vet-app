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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20151104011959) do

  create_table "appointments", :force => true do |t|
    t.datetime "appointment_date"
    t.boolean  "reminder"
    t.text     "reason"
    t.integer  "doctor_id"
    t.integer  "pet_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "appointments", ["doctor_id"], :name => "index_appointments_on_doctor_id"
  add_index "appointments", ["pet_id"], :name => "index_appointments_on_pet_id"

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "doctors", :force => true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "school"
    t.datetime "practice_started"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "pets", :force => true do |t|
    t.string   "name"
    t.string   "type"
    t.string   "breed"
    t.integer  "age"
    t.string   "weight"
    t.integer  "customer_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "pets", ["customer_id"], :name => "index_pets_on_customer_id"

  create_table "receptionists", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
