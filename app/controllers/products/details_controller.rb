# frozen_string_literal: true

module Products
  class DetailsController < ApplicationController
    def index
      product = Product.find(params[:product_id])
      details = Products::DetailsFetcher.new(product: product).call.data

      render json: product,
             serializer: ProductDetailsSerializer,
             options: details
    end
  end
end
