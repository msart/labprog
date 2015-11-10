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

ActiveRecord::Schema.define(:version => 20151109173741) do

  create_table "accounts", :force => true do |t|
    t.string   "user"
    t.string   "locker"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.datetime "expire_date"
  end

  create_table "lockers", :force => true do |t|
    t.string   "code"
    t.string   "owner"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "raffles", :force => true do |t|
    t.datetime "start"
    t.datetime "finish"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

# Could not dump table "users" because of following StandardError
#   Unknown type 'belongs_to' for column 'raffle'

end
