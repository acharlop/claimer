class AddPolyToCompany < ActiveRecord::Migration[5.0]
  def change
    add_reference :companies, :company_list, polymorphic: true, index: { name: 'company_list'}
  end
end
