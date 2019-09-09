class RemoveColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :plants, :last_watered
    remove_column :plants, :user_id
    remove_column :plants, :plant_type_id
  end
end
