class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :fee
      t.string :layout
      t.float :exclusive_area
      t.integer :floor_position
      t.integer :delete_flg

      t.timestamps
    end
  end
end
