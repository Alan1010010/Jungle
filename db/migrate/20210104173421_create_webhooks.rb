class CreateWebhooks < ActiveRecord::Migration[5.2]
  def change
    create_table :webhooks do |t|
      t.text :payload

      t.timestamps
    end
  end
end
