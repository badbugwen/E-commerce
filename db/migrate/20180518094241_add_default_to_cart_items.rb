class AddDefaultToCartItems < ActiveRecord::Migration[5.1]
  def change
    remove_column :cartItems, :product_id
    remove_column :cartItems, :quantity
    
    add_column :cartItems, :quantity, :integer, default: 1 
    add_column :cartItems, :product_id, :integer, null: true
  end
end
