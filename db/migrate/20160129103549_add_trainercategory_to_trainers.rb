class AddTrainercategoryToTrainers < ActiveRecord::Migration
  def change
    add_column :trainers, :category_id, :integer
  end
end
