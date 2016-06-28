class RenamePhoneNumbersPhones < ActiveRecord::Migration[5.0]
  def change
  	rename_column :phones, :phone_numbers_id, :phone_user_id
  	rename_column :phones, :phone_numbers_type, :phone_user_type
  end
end
