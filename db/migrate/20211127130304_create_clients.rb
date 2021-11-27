class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :fullname
      t.string :status
      t.string :email
      t.integer :phonenumber
      t.integer :talks
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
