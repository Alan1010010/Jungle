class AddColumnToPlants < ActiveRecord::Migration[5.2]
  def change
    add_column :plants, :latin_name, :string
    add_column :plants, :water_freq, :integer
  end
end
