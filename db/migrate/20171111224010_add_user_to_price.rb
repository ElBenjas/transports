class AddUserToPrice < ActiveRecord::Migration[5.1]
  def change
    add_reference :drivers, :price, foreign_key: true
  end
end
