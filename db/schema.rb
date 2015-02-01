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

ActiveRecord::Schema.define(version: 20150201201418) do

  create_table "rpc_results", force: :cascade do |t|
    t.integer  "rpc_id",     limit: 4
    t.string   "sender",     limit: 255
    t.integer  "statuscode", limit: 4
    t.string   "statusmsg",  limit: 255
    t.text     "data",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "rpcs", force: :cascade do |t|
    t.string   "agent",             limit: 255
    t.string   "action",            limit: 255
    t.integer  "timeout",           limit: 4
    t.integer  "discovery_timeout", limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

end
