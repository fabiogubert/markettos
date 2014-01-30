class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :user_id
      t.integer :member
      t.string :pay_method
      t.integer :card_number
      t.integer :quantity
      t.float :sub_total
      t.string :discount
      t.float :paid_amount

      t.timestamps
    end
  end
end
