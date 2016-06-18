require 'rails_helper'

RSpec.describe CompanyType, type: :model do
  it 'has a valid factory' do
  	expect(build(:company_type)).to be_valid
  end

  it 'name must exist and cannot be empty' do
  	expect(build(:company_type, name:  "")).to_not be_valid
  	expect(build(:company_type, name: nil)).to_not be_valid
  end
end
