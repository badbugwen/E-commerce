class CreateCartitems < ActiveRecord::Migration[5.1]
  def change
    create_table :cartitems do |t|
      t.integer :quantity
      t.integer :cart_id
      t.integer :product_id

      t.timestamps
    end
  end
end
