require 'rails_helper'

RSpec.describe Address, :type => :model do
	it 'has a valid factory' do
  	expect(build(:address)).to be_valid
	end
end
