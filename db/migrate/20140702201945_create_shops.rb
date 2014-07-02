class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.string :address_city
      t.string :address_street
      t.string :email
      t.string :opening_hours

      t.timestamps
    end
  end
end
