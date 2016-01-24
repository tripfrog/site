class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :answer_id
      t.integer :post_id
      t.string :categoly
      t.timestamps null: false
    end
  end
end
