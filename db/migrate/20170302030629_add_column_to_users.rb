class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :point, :integer

    add_column :users, :moving, :float
  end
end
