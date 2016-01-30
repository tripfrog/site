class AddUserculumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :category, :string
    add_column :users, :place, :string
  end
end
