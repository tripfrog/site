class AddUserprofileToUsers < ActiveRecord::Migration
  def change
    add_column :users, :profile, :text
    add_column :users, :status, :string
  end
end
