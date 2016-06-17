require 'rails_helper'

RSpec.describe Client, type: :model do
  it 'has a valid factory' do
  	expect(build(:client)).to be_valid
  end

  it 'must have a first and last name' do
  	expect(build(:client, first: nil)).to_not be_valid
  	expect(build(:client, last:  nil)).to_not be_valid
  end
end
