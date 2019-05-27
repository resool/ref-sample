# frozen_string_literal: true

class Product < ApplicationRecord
  validates :name, :ext_id, presence: true
  validates :ext_id, uniqueness: true
end
