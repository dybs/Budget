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

ActiveRecord::Schema.define(:version => 20130406044952) do

  create_table "payment_categories", :force => true do |t|
    t.string   "name"
    t.boolean  "active"
    t.integer  "sortOrder"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "payment_category_links", :force => true do |t|
    t.integer  "paymentCategory_id"
    t.integer  "payment_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "payment_category_links", ["paymentCategory_id"], :name => "index_payment_category_links_on_paymentCategory_id"
  add_index "payment_category_links", ["payment_id"], :name => "index_payment_category_links_on_payment_id"

  create_table "payment_methods", :force => true do |t|
    t.string   "name"
    t.boolean  "active"
    t.integer  "sortOrder"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "payments", :force => true do |t|
    t.decimal  "amount"
    t.date     "purchaseDate"
    t.text     "description"
    t.integer  "paymentMethod_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "payments", ["paymentMethod_id"], :name => "index_payments_on_paymentMethod_id"

end
