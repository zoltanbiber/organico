class DropShoppers < ActiveRecord::Migration
  def change
    drop_table :shoppers
  end
end
