# frozen_string_literal: true

class AddNullConstToProducts < ActiveRecord::Migration[5.2]
  def change
    change_column_null :products, :name, false
    change_column_null :products, :ext_id, false
  end
end
