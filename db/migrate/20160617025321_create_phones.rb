class CreatePhones < ActiveRecord::Migration[5.0]
  def change
    create_table :phones do |t|
      t.string :number,	null: false
      t.string :description, null: false, default: "Cell"

      t.timestamps
    end
  end
end
