class RemoveCategoryculumnFromCategories < ActiveRecord::Migration
  def change
    remove_column :categories, :prefecture, :string
  end
end
