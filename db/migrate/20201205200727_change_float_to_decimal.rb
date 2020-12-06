class ChangeFloatToDecimal < ActiveRecord::Migration[6.0]
  def change
    change_column :houses, :latitude, :decimal
    change_column :houses, :longitude, :decimal
  end
end
