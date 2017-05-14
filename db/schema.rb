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

ActiveRecord::Schema.define(version: 20170514010445) do

  create_table "rentals", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "kind"
    t.string   "name"
    t.string   "zip_code",      limit: 20,                             comment: "郵便番号"
    t.integer  "prefecture_id",                                        comment: "都道府県ID"
    t.integer  "city_id",                                              comment: "市区町村ID"
    t.string   "address1",                                             comment: "住所１"
    t.string   "address2",                                             comment: "住所２"
    t.string   "built",         limit: 50,                             comment: "築年月"
    t.string   "floor",         limit: 20,                             comment: "建物階数"
    t.string   "structure",     limit: 50,                             comment: "構造"
    t.string   "direction",     limit: 20,                             comment: "方向"
    t.string   "total_number",  limit: 50,                             comment: "総戸数"
    t.text     "description",   limit: 65535
    t.integer  "is_deleted",                  default: 0
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "rooms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "rental_id"
    t.string   "fee",                   limit: 80,                             comment: "賃料"
    t.float    "exclusive_area",        limit: 24,                             comment: "専有面積"
    t.integer  "floor_position",                                               comment: "所在階"
    t.string   "layout",                limit: 80,                             comment: "間取り"
    t.string   "layout_detail",         limit: 80,                             comment: "間取り詳細"
    t.string   "common_cost",           limit: 80,                             comment: "共益費"
    t.string   "deposit",               limit: 80,                             comment: "敷金"
    t.string   "key_money",             limit: 80,                             comment: "礼金"
    t.string   "security_money",        limit: 80,                             comment: "保証金"
    t.string   "cancel_reduction",      limit: 80,                             comment: "解約引"
    t.string   "deposit_addition",      limit: 80,                             comment: "敷金積み増し"
    t.string   "contract_term",         limit: 50,                             comment: "契約期間"
    t.string   "renewal_fee",           limit: 50,                             comment: "更新料"
    t.string   "orientation",           limit: 20,                             comment: "方位"
    t.string   "classification",        limit: 50,                             comment: "種別"
    t.string   "room_number",           limit: 20,                             comment: "部屋番号"
    t.string   "parking",               limit: 20,                             comment: "駐車場"
    t.string   "parking_fee",           limit: 20,                             comment: "駐車場料金"
    t.string   "insurance",             limit: 20,                             comment: "保険加入"
    t.string   "insurance_fee",         limit: 50,                             comment: "保険料金"
    t.string   "insurance_name",        limit: 50,                             comment: "保険名"
    t.string   "insurance_term",        limit: 20,                             comment: "保険期間"
    t.string   "typical_rental",        limit: 50,                             comment: "特有賃"
    t.string   "transaction_form",      limit: 20,                             comment: "取引形態"
    t.string   "division",              limit: 20,                             comment: "取引区分"
    t.string   "bondsman",              limit: 50,                             comment: "保証人"
    t.string   "surety_company",        limit: 50,                             comment: "保証会社"
    t.string   "surety_company_detail",                                        comment: "保証会社詳細"
    t.text     "facility_condition",    limit: 65535,                          comment: "設備条件"
    t.text     "note",                  limit: 65535,                          comment: "備考"
    t.string   "condition",             limit: 50,                             comment: "現状"
    t.string   "occupancy_day",         limit: 20,                             comment: "入居可能日"
    t.integer  "staff_id",                                                     comment: "スタッフID"
    t.text     "staff_comment",         limit: 65535,                          comment: "スタッフコメント"
    t.string   "point",                                                        comment: "物件のポイント"
    t.integer  "is_deleted",                          default: 0
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  create_table "traffics", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "rental_id",                           comment: "賃貸物件ID"
    t.integer  "line_id",                             comment: "沿線ID"
    t.integer  "station_id",                          comment: "駅ID"
    t.integer  "is_deleted", default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
