class AddColumnsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :trainer_id, :string
  end
end
