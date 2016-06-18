class AddTypeToCompany < ActiveRecord::Migration[5.0]
  def change
    add_reference :companies, :company_type, foreign_key: true, index: true
  end
end
