class AddColumnsToShops < ActiveRecord::Migration
  def change
    add_column :shops, :phone, :string
    add_column :shops, :website, :string
    add_column :shops, :address_secondary, :string
    add_column :shops, :address_building, :string
    add_column :shops, :address_postcode, :string
    add_column :shops, :address_state, :string
    add_column :shops, :address_country, :string
    add_column :shops, :address_latitude, :float
    add_column :shops, :address_longitude, :float
  end
end
