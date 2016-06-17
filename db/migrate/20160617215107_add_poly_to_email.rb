class AddPolyToEmail < ActiveRecord::Migration[5.0]
  def change
    add_reference :emails, :mailboxes, polymorphic: true, index: true
  end
end
