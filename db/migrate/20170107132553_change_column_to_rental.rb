class ChangeColumnToRental < ActiveRecord::Migration[5.0]
  def change
    change_column :rentals, :delete_flg, :integer, default: 0
  end
end
