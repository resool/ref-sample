class Product < ApplicationRecord
  validates :name, :ext_id, presence: true
end
