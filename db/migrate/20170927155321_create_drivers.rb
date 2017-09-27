class CreateDrivers < ActiveRecord::Migration[5.1]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :address
      t.string :contact_num
      t.string :age
      t.string :driver_license
      t.string :ine
      t.text :observations

      t.timestamps
    end
  end
end
