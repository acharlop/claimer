class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :first, null: false
      t.string :last, null: false

      t.timestamps
    end
    add_index :clients, :first
    add_index :clients, :last
  end
end
