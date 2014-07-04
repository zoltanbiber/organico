class AddShopIdToShopTag < ActiveRecord::Migration
  def change
    add_column :shop_tags, :shop_id, :integer
  end
end
