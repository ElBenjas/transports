class AddProfileToClient < ActiveRecord::Migration[5.1]
  def change
    add_reference :profiles, :client, foreign_key: true
  end
end
