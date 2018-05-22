class ProductsController < ApplicationController
  def index
    @products = Product.page(params[:page]).per(12) 
  end

  def show
    @product = Product.find(params[:id])
  end

  def add_to_cart
    @product = Product.find(params[:id])
    current_cart.add_cart_item(@product)

    redirect_back(fallback_location: root_path)
  end
  
  def delete_from_cart
    cart_item = CartItem.find_by(params[:id])
    cart_item.destroy
    redirect_back(fallback_location: root_path)
  end

  def change_cart_item
    cart_item = CartItem.find_by(params[:id])
    if params[:type] == "add"
      cart_item.quantity += 1
    elsif params[:type] == "reduce"
      cart_item.quantity -= 1
    end
    
    if cart_item.quantity == 0
      cart_item.destroy
    else
      cart_item.save!
    end  
    redirect_back(fallback_location: root_path)        
  end
end
