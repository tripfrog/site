class AddTrainerculumnToTrainers < ActiveRecord::Migration
  def change
    add_column :trainers, :place, :string
  end
end
