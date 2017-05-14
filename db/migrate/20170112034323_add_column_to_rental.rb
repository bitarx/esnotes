class AddColumnToRental < ActiveRecord::Migration[5.0]
  def change
    add_column :rentals, :zip_code, :string, :after => :name, :limit => 20, comment: '郵便番号'
    add_column :rentals, :prefecture_id, :integer, :after => :zip_code, comment: '都道府県ID'
    add_column :rentals, :city_id, :integer, :after => :prefecture_id, comment: '市区町村ID'
    add_column :rentals, :address1, :string, :after => :city_id, comment: '住所１'
    add_column :rentals, :address2, :string, :after => :address1, comment: '住所２'
    add_column :rentals, :built, :string, :limit => 50, :after => :address2, comment: '築年月'
    add_column :rentals, :floor, :string, :limit => 20, :after => :built, comment: '建物階数'
    add_column :rentals, :structure, :string, :limit => 50, :after => :floor, comment: '構造'
    add_column :rentals, :direction, :string, :limit => 20, :after => :structure, comment: '方向'
    add_column :rentals, :total_number, :string, :after => :direction, :limit => 50, comment: '総戸数'
  end
end
