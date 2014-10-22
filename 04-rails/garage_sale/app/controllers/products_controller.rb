class ProductsController < ApplicationController
  before_action :authenticate, :except => [:index]

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
    @categories = Category.all
  end

  def create
    @product = Product.new(product_params)
    raise 'broke again'
    
    if @product.save
      redirect_to '/products'
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
    @categories = Category.all
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to '/products'
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to '/products'
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :category, :category_id)
  end

end