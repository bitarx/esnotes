class AddColumnToRoom < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :rental_id, :integer, :after => :id
  end
end
