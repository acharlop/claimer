class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :street,   null: false
      t.string :apartment,null: true, default: null
      t.integer :zip,     null: false
      t.string :city,     null: false
      t.string :state,    null: false, limit: 2, default: "FL"

      t.timestamps
    end
  end
end
