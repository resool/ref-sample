# frozen_string_literal: true

class ProductSerializer < ActiveModel::Serializer
  attributes :name, :ext_id, :id
end
