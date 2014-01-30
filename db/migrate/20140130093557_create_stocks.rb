class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.integer :item_id
      t.integer :quantity

      t.timestamps
    end
  end
end
