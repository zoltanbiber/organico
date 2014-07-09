class AddColumnsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :shop_id, :integer
    add_column :products, :name, :string
    add_column :products, :price, :decimal
    add_column :products, :currency, :string
  end
end
