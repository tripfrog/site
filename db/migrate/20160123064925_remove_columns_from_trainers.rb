class RemoveColumnsFromTrainers < ActiveRecord::Migration
  def change
    remove_column :trainers, :provider, :string
    remove_column :trainers, :uid, :string
  end
end
