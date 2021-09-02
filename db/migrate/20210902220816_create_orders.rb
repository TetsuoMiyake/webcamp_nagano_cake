class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :total_payment
      t.integer :postage
      t.integer :payment_method
      t.string :postal_code
      t.string :shipping_address
      t.string :name

      t.timestamps
    end
  end
end
