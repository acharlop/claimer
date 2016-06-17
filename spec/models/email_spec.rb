require 'rails_helper'

RSpec.describe Email, type: :model do
  it 'has a valid factory' do
  	expect(build(:email)).to be_valid
  end

  it 'excepts all valid formats' do
  	expect(build(:email, :valid_1)).to be_valid
  	expect(build(:email, :valid_2)).to be_valid
  	expect(build(:email, :valid_3)).to be_valid
  	expect(build(:email, :valid_4)).to be_valid
  end

  it 'rejects non valid formats' do
  	expect(build(:email, :invld_1)).to_not be_valid
  	expect(build(:email, :invld_2)).to_not be_valid
  	expect(build(:email, :invld_3)).to_not be_valid
  	expect(build(:email, :invld_4)).to_not be_valid
  	expect(build(:email, :invld_5)).to_not be_valid
  	expect(build(:email, :invld_6)).to_not be_valid
  	expect(build(:email, :invld_7)).to_not be_valid
  end
end
