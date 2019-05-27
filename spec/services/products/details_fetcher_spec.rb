# frozen_string_literal: true

require 'spec_helper'

describe Products::DetailsFetcher, type: :service do
  let(:product) { create(:product) }
  let(:params) { { product: product } }

  subject(:service) { described_class.new(params) }

  context 'with valid params' do
    before { service.call }

    it 'calles external api' do
      url = "api.example.com/products?id=#{product.ext_id}"
      expect(a_request(:get, url)).to have_been_made.once
    end

    it 'return details information of product' do
      expect(service.call.data).to include(
        title: 'Sample title',
        department: 'Sample department',
        media_avatar: 'avatar url'
      )
    end
  end

  context 'with invalid params' do
    context 'without product' do
      let(:product) { nil }

      it 'return' do
        expect { subject.call }.to raise_error(ActiveModel::ValidationError)
      end
    end
  end
end
