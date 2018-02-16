class RemoveFieldsFromClients < ActiveRecord::Migration[5.1]
  def change
    remove_column :clients, :cel, :address, :email 
  end
end
