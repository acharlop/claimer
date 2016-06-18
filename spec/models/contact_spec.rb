require 'rails_helper'

RSpec.describe Contact, type: :model do
  it 'has a valid factory' do
  	expect(build(:contact)).to be_valid
  end

  it 'must have a first and last name' do
  	expect(build(:contact, first: nil)).to_not be_valid
  	expect(build(:contact, first:  "")).to_not be_valid
  	expect(build(:contact, last:  nil)).to_not be_valid
  	expect(build(:contact, last:   "")).to_not be_valid
  end

  it 'belongs to a company' do
  	should belong_to(:company)
  end

  it 'belongs to a position' do
  	should belong_to(:position)
  end

  it 'has many phone numbers' do
  	should have_many(:phones)
  end

  it 'has many emails' do
  	should have_many(:emails)
  end
end
