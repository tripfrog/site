class AddRelationshipculumnToRelationships < ActiveRecord::Migration
  def change
    add_column :relationships, :following_id, :integer
    add_column :relationships, :following_type, :string
    add_column :relationships, :follower_id, :integer
    add_column :relationships, :follower_type, :string
  end
end
