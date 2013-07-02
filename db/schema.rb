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

ActiveRecord::Schema.define(version: 20130701215351) do

  create_table "enrollments", force: true do |t|
    t.string "name", limit: 100
  end

  create_table "service_providers", force: true do |t|
    t.integer "enrollment_id"
    t.string  "name",          limit: 200
    t.string  "facility_name", limit: 200
    t.string  "provider_name", limit: 200
    t.string  "npi",           limit: 200
    t.string  "tax_id",        limit: 200
    t.string  "address",       limit: 200
    t.string  "city",          limit: 200
    t.string  "state",         limit: 200
    t.string  "zip",           limit: 200
    t.string  "ptan",          limit: 200
    t.string  "payer_id",      limit: 200
  end

end
