class AddColumnToHouseReview < ActiveRecord::Migration[6.0]
  def change
    add_column :house_reviews, :toured, :string
  end
end
