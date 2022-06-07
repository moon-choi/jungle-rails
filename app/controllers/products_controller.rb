class ProductsController < ApplicationController
#  this represents shows. 
# 1. routes tells where to go.
# 2. controller does logic.
# 3. view: renders these. 

  def index
    @products = Product.all.order(created_at: :desc)
    render "/admin/products"
  end

  def show
    @product = Product.find params[:id]
  end

end
