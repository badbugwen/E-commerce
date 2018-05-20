class RenameTable < ActiveRecord::Migration[5.1]
  def change
    rename_table :cartItems, :cart_items
    rename_table :orderitems, :order_items
  end
end
