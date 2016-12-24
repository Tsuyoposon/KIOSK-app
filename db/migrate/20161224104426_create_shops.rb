class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.text :body
      t.string :image

      t.timestamps null: false
    end
  end
end
