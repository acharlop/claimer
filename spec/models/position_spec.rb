require 'rails_helper'

RSpec.describe Position, type: :model do
  it 'has a valid factory' do
  	expect(build(:position)).to be_valid
  end

  it 'must have a name' do
  	expect(build(:position, name: "something awesome")).to be_valid
  	expect(build(:position, name: nil)).to_not be_valid
  end
end
