class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :cel
      t.string :address
      t.string :email
      t.text :observations

      t.timestamps
    end
  end
end
