class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :cel
      t.string :address
      t.string :email

      t.timestamps
    end
  end
end
