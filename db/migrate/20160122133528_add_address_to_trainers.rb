class AddAddressToTrainers < ActiveRecord::Migration
  def change
    add_column :trainers, :address, :string
  end
end
