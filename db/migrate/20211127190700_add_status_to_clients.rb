class AddStatusToClients < ActiveRecord::Migration[6.1]
  def change
    add_reference :clients, :status, null: false, foreign_key: true
  end
end
