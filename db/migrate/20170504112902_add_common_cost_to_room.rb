class AddCommonCostToRoom < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :common_cost, :integer, after: :floor_position
    add_column :rooms, :deposit, :integer, after: :common_cost
    add_column :rooms, :key_money, :integer, after: :deposit
  end
end
