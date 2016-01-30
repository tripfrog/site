class RemoveRelationshipculumnFromRelationships < ActiveRecord::Migration
  def change
    remove_column :relationships, :follower_user_id, :integer
    remove_column :relationships, :followed_user_id, :integer
    remove_column :relationships, :follower_trainer_id, :integer
    remove_column :relationships, :followed_trainer_id, :integer
  end
end
