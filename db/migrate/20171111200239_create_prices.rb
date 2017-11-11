class CreatePrices < ActiveRecord::Migration[5.1]
  def change
    create_table :prices do |t|
      t.string :city_origin
      t.string :city_destiny
      t.string :total_days
      t.string :first_payment
      t.string :total_payment
      t.text :observations

      t.timestamps
    end
  end
end
