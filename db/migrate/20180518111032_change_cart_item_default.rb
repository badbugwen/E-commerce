class ChangeCartItemDefault < ActiveRecord::Migration[5.1]
  def change
    change_column_null :cartItems, :product_id, false
  end
end
