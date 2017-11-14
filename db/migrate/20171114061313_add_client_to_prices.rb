class AddClientToPrices < ActiveRecord::Migration[5.1]
  def change
    add_reference :prices, :client, foreign_key: true
  end
end
