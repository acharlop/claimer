class AddDescriptionToEmail < ActiveRecord::Migration[5.0]
  def change
    add_column :emails, :description, :string, null: false, default: "Personal"
  end
end
