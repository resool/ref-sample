class ProductsController < ApplicationController
  before_action :set_product

  def show
    render json: @product
  end

  private

  def set_product
    @product = Product.find(params[:id] || params[:product_id])
  end
end
