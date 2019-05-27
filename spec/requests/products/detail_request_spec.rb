# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Product detail requests', type: :request do
  let(:product) { create(:product) }

  describe 'GET /products/:id/details' do
    it 'returns product details info' do
      get "/products/#{product.id}/details"

      expect(JSON.parse(response.body)).to include(
        'name' => product.name,
        'ext_id' => product.ext_id,
        'title' => 'Sample title',
        'avatar_url' => 'avatar url',
        'department' => 'Sample department'
      )
    end
  end
end
