class AddLikesCountToShops < ActiveRecord::Migration
  def change
    add_column :shops, :likes_count, :integer
  end
end
