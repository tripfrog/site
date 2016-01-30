class RemoveUsersculumnFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :category, :string
    remove_column :users, :place, :string
  end
end
