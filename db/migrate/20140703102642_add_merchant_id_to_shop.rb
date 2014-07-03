class AddMerchantIdToShop < ActiveRecord::Migration
  def change
    add_column :shops, :merchant_id, :integer
  end
end
