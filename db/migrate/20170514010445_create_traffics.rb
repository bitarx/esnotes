class CreateTraffics < ActiveRecord::Migration[5.0]
  def change
    create_table :traffics do |t|
      t.integer :rental_id, comment: '賃貸物件ID'
      t.integer :line_id, after: :rental_id, comment: '沿線ID'
      t.integer :station_id, after: :line_id, comment: '駅ID'
      t.integer :is_deleted, default: 0
      t.timestamps
    end
  end
end
