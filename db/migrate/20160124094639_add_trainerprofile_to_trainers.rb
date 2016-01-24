class AddTrainerprofileToTrainers < ActiveRecord::Migration
  def change
    add_column :trainers, :profile, :text
    add_column :trainers, :status, :string
  end
end
