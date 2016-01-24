class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :categoable_id
      t.string  :categoable_type
      t.string  :category
      t.timestamps null: false
    end
  end
end
