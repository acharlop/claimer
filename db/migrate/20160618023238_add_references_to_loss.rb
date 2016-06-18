class AddReferencesToLoss < ActiveRecord::Migration[5.0]
  def change
    add_reference :losses, :loss_type, foreign_key: true, index: true
    add_reference :losses, :address, 	 foreign_key: true, index: true
  end
end
