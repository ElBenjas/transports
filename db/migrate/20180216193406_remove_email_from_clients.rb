class RemoveEmailFromClients < ActiveRecord::Migration[5.1]
  def change
    remove_column :clients, :email
    remove_column :clients, :address
  end
end
