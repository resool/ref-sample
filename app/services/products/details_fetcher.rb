# frozen_string_literal: true

module Products
  class DetailsFetcher < Base
    validates :product, presence: true

    attr_reader :data

    def initialize(product:)
      @product = product
    end

    private

    attr_reader :product

    def run
      @data = (fetch_data.dig(:data, 0) || {})
    end

    def fetch_data
      url = "#{Settings.api.url}/products?id=#{product.ext_id}"
      response = Net::HTTP.get_response(URI(url))
      JSON(response.body).deep_symbolize_keys
    rescue JSON::ParserError
      {}
    end
  end
end
