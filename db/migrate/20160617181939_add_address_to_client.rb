class AddAddressToClient < ActiveRecord::Migration[5.0]
  def change
    add_reference :clients, :address, foreign_key: true
  end
end
