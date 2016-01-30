class RemoveTrainerculumnFromTrainers < ActiveRecord::Migration
  def change
    remove_column :trainers, :category, :string
    remove_column :trainers, :place, :string
  end
end
