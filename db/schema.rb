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

ActiveRecord::Schema.define(version: 20170121164606) do

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.boolean  "active"
    t.string   "contact"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string   "name"
    t.string   "truck"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dumpsites", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dumpster_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dumpsters", force: :cascade do |t|
    t.string   "number"
    t.string   "location"
    t.integer  "dumpster_type_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "site_id"
    t.index ["dumpster_type_id"], name: "index_dumpsters_on_dumpster_type_id"
    t.index ["site_id"], name: "index_dumpsters_on_site_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string   "name"
    t.decimal  "quantity"
    t.decimal  "rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.integer  "service_type_id"
    t.datetime "date"
    t.string   "description"
    t.decimal  "quantity"
    t.decimal  "rate"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["service_type_id"], name: "index_services_on_service_type_id"
  end

  create_table "sites", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.boolean  "active"
    t.string   "contact"
    t.string   "phone"
    t.integer  "customer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["customer_id"], name: "index_sites_on_customer_id"
  end

  create_table "work_order_statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "work_orders", force: :cascade do |t|
    t.integer  "number"
    t.datetime "date"
    t.text     "description"
    t.integer  "work_order_status_id"
    t.integer  "site_id"
    t.integer  "driver_id"
    t.datetime "start_date"
    t.datetime "finish_date"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["driver_id"], name: "index_work_orders_on_driver_id"
    t.index ["site_id"], name: "index_work_orders_on_site_id"
    t.index ["work_order_status_id"], name: "index_work_orders_on_work_order_status_id"
  end

end
