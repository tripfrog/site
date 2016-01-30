class AddCategoryculumnToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :prefecture, :string
  end
end
