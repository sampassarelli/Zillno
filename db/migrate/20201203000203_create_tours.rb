class CreateTours < ActiveRecord::Migration[6.0]
  def change
    create_table :tours do |t|
      t.integer :agent_id
      t.integer :buyer_id
      t.integer :house_id
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
