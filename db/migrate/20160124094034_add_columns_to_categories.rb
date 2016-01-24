class AddColumnsToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :trainer_id, :string
    add_column :categories, :user_id, :string
  end
end
