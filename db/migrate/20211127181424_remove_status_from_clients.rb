class RemoveStatusFromClients < ActiveRecord::Migration[6.1]
  def change
    remove_column :clients, :status, :string
  end
end
