class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.integer :agent_id
      t.integer :buyer_id
      t.integer :house_id

      t.timestamps
    end
  end
end
