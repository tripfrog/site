class RemoveUserculumnFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :place, :string
    remove_column :users, :status, :string
  end
end
