class RemoveCategoryCulumnFromCategories < ActiveRecord::Migration
  def change
    remove_column :categories, :content_id, :intager
    remove_column :categories, :content_type, :string
  end
end
