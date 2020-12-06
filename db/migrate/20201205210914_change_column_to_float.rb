class ChangeColumnToFloat < ActiveRecord::Migration[6.0]
  def change
    change_column :houses, :latitude, :float
    change_column :houses, :longitude, :float
  end
end
