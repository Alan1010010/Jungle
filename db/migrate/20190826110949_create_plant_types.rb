class CreatePlantTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :plant_types do |t|
      t.string :name
      t.integer :water_freq

      t.timestamps
    end
  end
end
