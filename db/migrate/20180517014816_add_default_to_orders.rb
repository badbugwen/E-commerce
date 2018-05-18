class AddDefaultToOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :paymnet_status
    remove_column :orders, :shipping_status
    add_column :orders, :paymnet_status, :string, :default => 'Not Paid'
    add_column :orders, :shipping_status, :string, :default => 'Not Shipped'
  end
end
