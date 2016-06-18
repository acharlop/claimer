class CreatePositions < ActiveRecord::Migration[5.0]
  def change
    create_table :positions do |t|
      t.string :name, null: false

      t.timestamps
    end
    add_index :positions, :name
  end
end
