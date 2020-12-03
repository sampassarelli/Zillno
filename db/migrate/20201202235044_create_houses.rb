class CreateHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :houses do |t|
      t.string :address
      t.integer :price
      t.integer :seller_id
      t.integer :agent_id
      t.string :picture
      t.integer :bedrooms
      t.float :bathrooms
      t.text :description

      t.timestamps
    end
  end
end
