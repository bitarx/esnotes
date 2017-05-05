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

ActiveRecord::Schema.define(version: 20170504112902) do

  create_table "rentals", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "kind"
    t.string   "name"
    t.string   "zip_code"
    t.integer  "prefecture"
    t.text     "address1",    limit: 65535
    t.text     "address2",    limit: 65535
    t.text     "traffic",     limit: 65535
    t.string   "built"
    t.string   "floor"
    t.string   "structure"
    t.string   "direction"
    t.text     "description", limit: 65535
    t.integer  "delete_flg",                default: 0
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "rooms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "rental_id"
    t.string   "fee",              limit: 80,              comment: "賃料"
    t.float    "exclusive_area",   limit: 24,              comment: "専有面積"
    t.integer  "floor_position",                           comment: "所在階"
    t.string   "layout",           limit: 80,              comment: "間取り"
    t.string   "layout_detail",    limit: 80,              comment: "間取り詳細"
    t.string   "common_cost",      limit: 80,              comment: "共益費"
    t.string   "deposit",          limit: 80,              comment: "敷金"
    t.string   "key_money",        limit: 80,              comment: "礼金"
    t.string   "security_money",   limit: 80,              comment: "保証金"
    t.string   "cancel_reduction", limit: 80,              comment: "解約引"
    t.string   "deposit_addition", limit: 80,              comment: "敷金積み増し"
    t.string   "contract_term",    limit: 50,              comment: "契約期間"
    t.string   "renewal_fee",      limit: 50,              comment: "更新料"
    t.string   "orientation",      limit: 20,              comment: "方位"
    t.string   "classification",   limit: 50,              comment: "種別"
    t.string   "room_number",      limit: 20,              comment: "部屋番号"
    t.integer  "delete_flg"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end
