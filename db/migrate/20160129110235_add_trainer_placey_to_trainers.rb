class AddTrainerPlaceyToTrainers < ActiveRecord::Migration
  def change
    add_column :trainers, :place_id, :integer
  end
end
