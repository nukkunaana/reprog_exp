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

ActiveRecord::Schema.define(version: 20140223151604) do

  create_table "cells", force: true do |t|
    t.string   "cell_type"
    t.integer  "passage"
    t.datetime "date"
    t.string   "container"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plasmid_probes", force: true do |t|
    t.integer  "plasmid_id"
    t.integer  "probe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plasmids", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "volume"
    t.integer  "concentration"
    t.datetime "date"
  end

  create_table "probes", force: true do |t|
    t.integer  "number"
    t.datetime "date"
    t.integer  "volume"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "viri", force: true do |t|
    t.string   "name"
    t.integer  "volume"
    t.datetime "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "virus_probes", force: true do |t|
    t.integer  "virus_id"
    t.integer  "probe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
