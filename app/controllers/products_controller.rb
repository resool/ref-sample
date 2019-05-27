# frozen_string_literal: true

class ProductsController < ApplicationController
  def show
    product = Product.find(params[:id])

    render json: product, serializer: ProductSerializer
  end
end
