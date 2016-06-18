class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :first, null: false, index: true
      t.string :last,  null: false, index: true
      t.references :position, foreign_key: true, index: true
      t.references :company, foreign_key: true, index: true

      t.timestamps
    end
  end
end
