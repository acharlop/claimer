require 'rails_helper'

RSpec.describe Address, :type => :model do
	it 'has a valid factory' do
  	expect(build(:address)).to be_valid
	end

	it 'is invalid without a street, zip, city, or state' do
  	expect(build(:address, street: nil)).to_not be_valid
  	expect(build(:address, zip: 	 nil)).to_not be_valid
  	expect(build(:address, city: 	 nil)).to_not be_valid
  	expect(build(:address, state:  nil)).to_not be_valid
	end

	it 'zip must be between 10000 & 99950' do
		expect(build(:address, zip: 	9999)).to_not be_valid
		expect(build(:address, zip:  99951)).to_not be_valid
	end

	it 'has one client' do
		should have_one(:client)
	end

	it 'has one loss' do
		should have_one(:loss)
	end
end
