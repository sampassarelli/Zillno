class ChangePurchaseToOffer < ActiveRecord::Migration[6.0]
  def change
    rename_table :purchases, :offers
  end
end
