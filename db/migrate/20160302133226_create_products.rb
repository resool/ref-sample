class CreateProducts < ActiveRecord::Migration[4.2]
  def change
    create_table(:products) do |t|
      t.string :ext_id
      t.string :name
    end

    add_index :products, :ext_id, unique: true
  end
end
