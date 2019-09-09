class ChangeUserColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :seeds
    add_column :users, :seeds, :integer, default: 0
  end
end
