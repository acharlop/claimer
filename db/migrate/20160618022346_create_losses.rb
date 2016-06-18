class CreateLosses < ActiveRecord::Migration[5.0]
  def change
    create_table :losses do |t|
      t.date :dol,            null: false, index: true
      t.string :description,  null: false, index: true

      t.timestamps
    end
  end
end
