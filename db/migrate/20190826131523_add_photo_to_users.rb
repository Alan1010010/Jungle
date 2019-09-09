class AddPhotoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :photo, :string
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :seeds, :integer
  end
end
