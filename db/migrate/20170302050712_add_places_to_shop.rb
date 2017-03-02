class AddPlacesToShop < ActiveRecord::Migration
  def change
    add_column :shops, :latitude, :decimal,precision: 11,scale: 8
    add_column :shops, :longitude, :decimal,precision: 11,scale: 8
  end
end
