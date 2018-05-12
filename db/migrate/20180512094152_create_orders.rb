class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|

      t.timestamps
      t.string :name
      t.string :address
      t.string :phone
      t.integer :sn
      t.integer :amount
      t.string :shipping_status
      t.string :payment_status
    end
  end
end
