# frozen_string_literal: true

class ProductDetailsSerializer < ProductSerializer
  attribute :avatar_url do
    instance_options[:options][:media_avatar]
  end

  attribute :department do
    instance_options[:options][:department]
  end

  attribute :title do
    instance_options[:options][:title]
  end
end
