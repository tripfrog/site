class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
t.integer :follower_user_id
t.integer :followed_user_id
t.integer :follower_trainer_id
t.integer :followed_trainer_id
      t.timestamps null: false
    end
  end
end
