class CreateCLikes < ActiveRecord::Migration
  def change
    create_table :c_likes do |t|
      t.integer :user_id
      t.integer :comment_id

      t.timestamps null: false
    end
  end
end
