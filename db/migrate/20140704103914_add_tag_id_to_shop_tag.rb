class AddTagIdToShopTag < ActiveRecord::Migration
  def change
    add_column :shop_tags, :tag_id, :integer
  end
end
