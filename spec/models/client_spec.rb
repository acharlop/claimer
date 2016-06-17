require 'rails_helper'

RSpec.describe Client, type: :model do
  it 'has a valid factory' do
  	expect(build(:client)).to be_valid
  end

  it 'must have a first and last name' do
  	expect(build(:client, first: nil)).to_not be_valid
  	expect(build(:client, last:  nil)).to_not be_valid
  end

  it 'must have a home address' do
  	expect(build(:client, home_address:  nil)).to_not be_valid
  end

  it 'should have many phone number' do
  	should have_many(:phones)
  end

  it 'should have may email addresses' do
  	should have_many(:emails)
  end
end
