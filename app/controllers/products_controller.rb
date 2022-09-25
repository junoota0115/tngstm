class ProductsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index 
    @products = Product.all
  end
  
  def new
    @product = Product.new
  end

  def create
    Product.create(product_params)
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])
    product.update(product_params)
  end 

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
  end

  private
  def product_params
    params.require(:product).permit(:company_id,:product_name,:price,:stock,:comment,:img_path)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
