class AddPostculumToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :answer_id, :integer
  end
end
