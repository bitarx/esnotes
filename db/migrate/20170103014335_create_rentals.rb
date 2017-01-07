class CreateRentals < ActiveRecord::Migration[5.0]
  def change
    create_table :rentals do |t|
      t.integer :kind
      t.string :name
      t.text :description
      t.integer :delete_flg

      t.timestamps
    end
  end
end
