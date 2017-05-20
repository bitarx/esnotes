class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :fee, comment: '賃料', :limit => 80
      t.float :exclusive_area, after: :fee, comment: '専有面積'
      t.integer :floor_position, after: :exclusive_area, comment: '所在階'
      t.string :layout, comment: '間取り', :limit => 80
      t.boolean :is_deleted, default: false
      t.timestamps
    end
  end
end
