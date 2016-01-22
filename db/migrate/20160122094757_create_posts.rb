class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :post
      t.integer :user_id
      t.text :image_url
      t.timestamps
    end
  end
end
