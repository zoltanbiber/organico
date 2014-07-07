class ChangeLatLngColumnName < ActiveRecord::Migration
  def change
    rename_column :shops, :address_latitude, :latitude
    rename_column :shops, :address_longitude, :longitude
  end
end
