# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Product requests', type: :request do
  let(:product) { create(:product) }

  describe 'GET /products/:id' do
    it 'returns products info' do
      get "/products/#{product.id}"

      expect(JSON.parse(response.body)).to include(
        'name' => product.name,
        'ext_id' => product.ext_id
      )
    end
  end
end
