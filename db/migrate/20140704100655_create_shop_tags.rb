class CreateShopTags < ActiveRecord::Migration
  def change
    create_table :shop_tags do |t|

      t.timestamps
    end
  end
end
