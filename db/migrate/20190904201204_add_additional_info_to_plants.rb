class AddAdditionalInfoToPlants < ActiveRecord::Migration[5.2]
  def change
    add_column :plants, :light, :string
    add_column :plants, :temperature, :string
    add_column :plants, :watering, :string
    add_column :plants, :soil, :string
    add_column :plants, :re_potting, :string
    add_column :plants, :level_of_care, :string
    add_column :plants, :pruning, :string
  end
end
