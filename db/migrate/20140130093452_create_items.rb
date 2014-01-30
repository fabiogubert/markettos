class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :barcode
      t.string :name
      t.text :description
      t.float :price
      t.string :location

      t.timestamps
    end
  end
end
