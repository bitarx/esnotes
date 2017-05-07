class RenameColumnToRental < ActiveRecord::Migration[5.0]
  def change
    rename_column :rentals, :delete_flg, :is_deleted
  end
end
