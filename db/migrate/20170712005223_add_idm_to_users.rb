class AddIdmToUsers < ActiveRecord::Migration
  def change
    add_column :users, :idm, :string
  end
end
