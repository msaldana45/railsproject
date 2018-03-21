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

ActiveRecord::Schema.define(version: 20160602094552) do

  create_table "categories", force: :cascade do |t|
    t.string   "categoryname"
    t.text     "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "phone"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.text     "addlnotes"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "username"
    t.string   "password_digest"
  end

  create_table "order_items", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.float    "saleprice"
    t.integer  "prodqty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "customer_id"
    t.date     "saledate"
    t.text     "salenotes"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "productname"
    t.string   "productimage"
    t.text     "description"
    t.integer  "category_id"
    t.integer  "supplier_id"
    t.float    "saleprice"
    t.string   "status"
    t.float    "purchaseprice"
    t.integer  "qtyonhand"
    t.integer  "reorderpoint"
    t.integer  "reorderqty"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "promotions", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "imagepath"
    t.date     "startdate"
    t.date     "enddate"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "reorders", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "supplier_id"
    t.integer  "qtyorder"
    t.date     "reorderdate"
    t.date     "expecteddelivery"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "product_id"
    t.date     "reviewdate"
    t.text     "comments"
    t.integer  "rating"
    t.string   "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "subscriptions", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "category_id"
    t.date     "subscribedate"
    t.date     "unsubscribedate"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string   "companyname"
    t.string   "pointofcontact"
    t.string   "website"
    t.string   "phone"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.text     "notes"
  end

  create_table "us_states", force: :cascade do |t|
    t.string   "abbreviation"
    t.string   "statename"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
