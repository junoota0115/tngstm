class ProductsController < ApplicationController
  def index 
    @products = Product.all
  end
  
  def new
    @product = Product.new
  end

  def create
    Product.create(product_params)
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
  end

  private
  def product_params
    params.require(:product).permit(:company_id,:product_name,:price,:stock,:comment,:img_path)
  end
end
