class AddColumnsToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :trainer_id, :string
  end
end
