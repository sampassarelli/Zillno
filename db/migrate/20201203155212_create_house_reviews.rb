class CreateHouseReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :house_reviews do |t|
      t.integer :buyer_id
      t.integer :house_id
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
