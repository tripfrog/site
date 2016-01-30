class RemoveTrainerCulumnFromTrainers < ActiveRecord::Migration
  def change
    remove_column :trainers, :place, :string
    remove_column :trainers, :status, :string
  end
end
