class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :photo
      t.date :last_watered
      t.references :user, foreign_key: true
      t.references :plant_type, foreign_key: true

      t.timestamps
    end
  end
end
