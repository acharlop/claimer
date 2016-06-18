require 'rails_helper'

RSpec.describe Company, type: :model do
  it 'has a valid factory' do
  	expect(build(:company)).to be_valid
  end

  it 'has many phone numbers' do
  	should have_many(:phones)
  end

  it 'has many email addresses' do
  	should have_many(:emails)
  end

  it 'belongs to company_type' do
  	should belong_to(:company_type)
  end

  it 'must have a name' do
  	expect(build(:company, name: nil)).to_not be_valid
  	expect(build(:company, name: "")).to_not be_valid
  end

  it 'must have a type' do
  	expect(build(:company, company_type: nil)).to_not be_valid
  end
end
