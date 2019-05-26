class DetailsController < ProductsController
  def index
    @product_info = FetchProductInfo.new(product: @product).call

    render @product
  end
end
