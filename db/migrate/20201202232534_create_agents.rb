class CreateAgents < ActiveRecord::Migration[6.0]
  def change
    create_table :agents do |t|
      t.string :first_name
      t.string :last_name
      t.integer :years_experience
      t.text :bio
      t.string :picture

      t.timestamps
    end
  end
end
