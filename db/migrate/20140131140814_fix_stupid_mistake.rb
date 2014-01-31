class FixStupidMistake < ActiveRecord::Migration
  def change
    change_table :items do |t|
      t.remove :barcode
      t.string :barcode
    end
  end
end
