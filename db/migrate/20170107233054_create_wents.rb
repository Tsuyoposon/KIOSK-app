class CreateWents < ActiveRecord::Migration
  def change
    create_table :wents do |t|
      t.integer :user_id
      t.integer :shop_id

      t.timestamps null: false
    end
  end
end
