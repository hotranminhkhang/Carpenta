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

ActiveRecord::Schema.define(:version => 20130906073548) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "background_images", :force => true do |t|
    t.string   "place"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "carts", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "collections", :force => true do |t|
    t.string   "title",       :default => "",   :null => false
    t.text     "description", :default => ""
    t.boolean  "active",      :default => true
    t.string   "permalink",   :default => "",   :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "order_line_items", :force => true do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.integer  "quantity",   :default => 1
    t.integer  "price"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "cart_id"
  end

  create_table "orders", :force => true do |t|
    t.string   "full_name"
    t.string   "phone"
    t.string   "email"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "city"
    t.string   "country"
    t.string   "payment_type"
    t.string   "status"
    t.date     "delivery_date"
    t.text     "notes"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "products", :force => true do |t|
    t.integer  "collection_id"
    t.string   "title",                 :default => "",   :null => false
    t.string   "product_code"
    t.string   "serial_no"
    t.text     "short_description",     :default => "",   :null => false
    t.text     "long_description"
    t.integer  "price",                 :default => 0,    :null => false
    t.string   "status"
    t.boolean  "active",                :default => true
    t.string   "permalink",             :default => "",   :null => false
    t.datetime "created_at",                              :null => false
    t.datetime "updated_at",                              :null => false
    t.string   "image_01_file_name"
    t.string   "image_01_content_type"
    t.integer  "image_01_file_size"
    t.datetime "image_01_updated_at"
    t.string   "image_02_file_name"
    t.string   "image_02_content_type"
    t.integer  "image_02_file_size"
    t.datetime "image_02_updated_at"
    t.string   "image_03_file_name"
    t.string   "image_03_content_type"
    t.integer  "image_03_file_size"
    t.datetime "image_03_updated_at"
    t.string   "image_04_file_name"
    t.string   "image_04_content_type"
    t.integer  "image_04_file_size"
    t.datetime "image_04_updated_at"
    t.string   "image_05_file_name"
    t.string   "image_05_content_type"
    t.integer  "image_05_file_size"
    t.datetime "image_05_updated_at"
  end

end
