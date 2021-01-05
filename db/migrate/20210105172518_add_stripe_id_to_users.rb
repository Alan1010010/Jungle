class AddStripeIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :StripeID, :string
  end
end
