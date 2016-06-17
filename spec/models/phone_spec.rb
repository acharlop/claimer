require 'rails_helper'

RSpec.describe Phone, type: :model do
  it 'has a valid factory' do
  	expect(build(:phone)).to be_valid
  end

  it 'is valid with multiple formats' do
  	expect(build(:phone)).to be_valid
  	expect(build(:phone, :long)).to be_valid
  	expect(build(:phone, :dash)).to be_valid
  	expect(build(:phone, :dots)).to be_valid
  end

  it 'is not valid if not 10 numbers' do
  	expect(build(:phone, :error_long )).to_not be_valid
  	expect(build(:phone, :error_short)).to_not be_valid
  end
  
  it 'should belong to client' do
    should belong_to(:phone_numbers)
  end
end
