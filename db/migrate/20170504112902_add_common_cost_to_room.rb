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
  end
end
