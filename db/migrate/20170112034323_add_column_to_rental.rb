class AddColumnToRental < ActiveRecord::Migration[5.0]
  def change
    add_column :rentals, :zip_code, :string, :after => :name
    add_column :rentals, :prefecture, :integer, :after => :zip_code
    add_column :rentals, :address1, :text, :after => :prefecture
    add_column :rentals, :address2, :text, :after => :address1
    add_column :rentals, :traffic, :text, :after => :address2
    add_column :rentals, :built, :text, :after => :traffic
    add_column :rentals, :floor, :string, :after => :built
    add_column :rentals, :structure, :string, :after => :floor
    add_column :rentals, :direction, :string, :after => :structure
  end
end
