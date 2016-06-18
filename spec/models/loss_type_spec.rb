require 'rails_helper'

RSpec.describe LossType, type: :model do
  it 'has a valid factory' do
  	expect(build(:loss_type)).to be_valid
  end

  it 'must have a name' do
  	expect(build(:loss_type, name: "Test")).to  be_valid
  	expect(build(:loss_type, name: nil)).to_not be_valid
  end
  
end
