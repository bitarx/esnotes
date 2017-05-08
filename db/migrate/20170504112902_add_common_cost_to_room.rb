class AddCommonCostToRoom < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :layout_detail, :string, after: :layout, comment: '間取り詳細', :limit => 80
    add_column :rooms, :common_cost, :string, after: :layout_detail, comment: '共益費', :limit => 80
    add_column :rooms, :deposit, :string, after: :common_cost, comment: '敷金', :limit => 80
    add_column :rooms, :key_money, :string, after: :deposit, comment: '礼金', :limit => 80
    add_column :rooms, :security_money, :string, after: :key_money, comment: '保証金', :limit => 80
    add_column :rooms, :cancel_reduction, :string, after: :security_money, comment: '解約引', :limit => 80
    add_column :rooms, :deposit_addition, :string, after: :cancel_reduction, comment: '敷金積み増し', :limit => 80
    add_column :rooms, :contract_term, :string, after: :deposit_addition, comment: '契約期間', :limit => 50
    add_column :rooms, :renewal_fee, :string, after: :contract_term, comment: '更新料', :limit => 50
    add_column :rooms, :orientation, :string, after: :renewal_fee, comment: '方位', :limit => 20
    add_column :rooms, :classification, :string, after: :orientation, comment: '種別', :limit => 50
    add_column :rooms, :room_number, :string, after: :classification, comment: '部屋番号', :limit => 20
    add_column :rooms, :parking, :string, after: :room_number, comment: '駐車場', :limit => 20
    add_column :rooms, :parking_fee, :string, after: :parking, comment: '駐車場料金', :limit => 20
    add_column :rooms, :insurance, :string, after: :parking_fee, comment: '保険加入', :limit => 20
    add_column :rooms, :insurance_fee, :string, after: :insurance, comment: '保険料金', :limit => 50
    add_column :rooms, :typical_rental, :string, after: :insurance_fee, comment: '特有賃', :limit => 50
    add_column :rooms, :transaction_form, :string, after: :typical_rental, comment: '取引形態', :limit => 20
    add_column :rooms, :division, :string, after: :transaction_form, comment: '取引区分', :limit => 20
    add_column :rooms, :bondsman, :string, after: :division, comment: '保証人', :limit => 50
    add_column :rooms, :surety_company, :string, after: :bondsman, comment: '保証会社', :limit => 50
    add_column :rooms, :surety_company_detail, :string, after: :surety_company, comment: '保証会社詳細'
    add_column :rooms, :facility_condition, :text, after: :surety_company_detail, comment: '設備条件'
    add_column :rooms, :note, :text, after: :facility_condition, comment: '備考'
  end
end
