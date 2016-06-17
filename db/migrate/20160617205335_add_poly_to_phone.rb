class AddPolyToPhone < ActiveRecord::Migration[5.0]
  def change
    add_reference :phones, :phone_numbers, polymorphic: true, index: true
  end
end
