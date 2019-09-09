class CreateUserPlants < ActiveRecord::Migration[5.2]
  def change
    create_table :user_plants do |t|
      t.date :last_watered
      t.string :nickname
      t.references :plant, foreign_key: true
      t.references :user, foreign_key: true
      t.string :photo

      t.timestamps
    end
  end
end
