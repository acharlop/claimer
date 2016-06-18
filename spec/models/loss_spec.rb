require 'rails_helper'

RSpec.describe Loss, type: :model do
  it 'has a valid factory' do
  	expect(build(:loss)).to be_valid
  end

  it 'must have all fields' do
  	expect(build(:loss, dol: 					nil)).to_not be_valid
  	expect(build(:loss, description: 	nil)).to_not be_valid
  	expect(build(:loss, loss_type: 		nil)).to_not be_valid
  	expect(build(:loss, loss_address: nil)).to_not be_valid
  end

  it 'date must be in the past' do
  	expect(build(:loss, dol: 1.day.ago)).to be_valid
  	expect(build(:loss, dol: 1.year.ago)).to be_valid
  	expect(build(:loss, dol: Date.today)).to be_valid
  	expect(build(:loss, dol: 1.day.from_now)).to_not be_valid
  end

  it 'belongs to loss_address' do
  	should belong_to(:loss_address)
  end

  it 'belongs to loss_type' do
  	should belong_to(:loss_type)
  end

  it 'loss address can be the same as home' do
  	client = build(:client)
  	address = client.home_address
  	loss = build(:loss, loss_address: address)
  	expect(loss).to be_valid
  	(loss.loss_address).equal? client.home_address
  end
end
