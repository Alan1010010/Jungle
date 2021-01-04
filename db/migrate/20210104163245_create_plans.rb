class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.string :title
      t.integer :base_price
      t.integer :interval_days
      t.text :description

      t.timestamps
    end
  end
end
