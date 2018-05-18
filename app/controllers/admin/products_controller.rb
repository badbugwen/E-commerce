class Admin::ProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_admin

  def index
    @products = Product.page(params[:page]).per(12)
    
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to admin_products_path, notice: "Product published successfully"
    else
      render :new, alert: "Product was dailed to create"
    end  
  end

  def edit
     @product = Product.find(params[:id])
  end
  
  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to admin_products_path(@product), notice: "Product was successfully updated"
    else
      render :edit, alert: "Product was failed to update"
    end  
  end 

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to admin_products_path, alert: "Product deleted!"
  end  

  private
  def product_params
    params.require(:product).permit(:name, :image, :description, :price)
  end
end
