class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :content_id
      t.string  :content_type
      t.string :category
      t.timestamps null: false
    end
  end
end
