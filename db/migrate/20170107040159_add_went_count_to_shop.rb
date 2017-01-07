class AddWentCountToShop < ActiveRecord::Migration
  def change
    add_column :shops, :wents_count, :integer
  end
end
