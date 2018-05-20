class CartItemsController < ApplicationController
 
  def delete_from_cart
    @cart_item = current_cart.cart_items.where(product_id: @product)
    @cart_item.destroy
    redirect_back(fallback_location: root_path, alert: "Product deleted from Cart!")
  end
end
