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

ActiveRecord::Schema.define(version: 20141013193548) do

  create_table "ab_chapters", force: true do |t|
    t.integer  "abmaster_id"
    t.date     "effectivedate"
    t.string   "chapter"
    t.string   "subchapter"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ab_details", force: true do |t|
    t.integer  "abmaster_id"
    t.date     "effectivedate"
    t.string   "addressline1"
    t.string   "addressline2"
    t.string   "addressline3"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.string   "country"
    t.boolean  "invalid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ab_emails", force: true do |t|
    t.integer  "abmaster_id"
    t.date     "effectivedate"
    t.string   "emailtype"
    t.string   "emailid"
    t.boolean  "preferred"
    t.boolean  "invalid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ab_masters", force: true do |t|
    t.integer  "membercode"
    t.string   "salutation"
    t.string   "firstname"
    t.string   "middlename"
    t.string   "lastname"
    t.string   "type"
    t.date     "dob"
    t.string   "group"
    t.string   "subgroup1"
    t.string   "subgroup2"
    t.boolean  "inactive"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ab_phones", force: true do |t|
    t.integer  "abmaster_id"
    t.date     "effectivedate"
    t.string   "phonetype"
    t.integer  "phonenum"
    t.boolean  "preferred"
    t.boolean  "invalid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ab_relationships", force: true do |t|
    t.integer  "abmaster_id"
    t.integer  "relatedto_id"
    t.string   "relationtype"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ab_reltionships", force: true do |t|
    t.integer  "abmaster_id"
    t.integer  "relatedto_id"
    t.string   "relationtype"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
