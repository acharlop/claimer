class Company < ApplicationRecord
	has_many :phones, as: :phone_numbers
	has_many :emails, as: :mailboxes

	belongs_to :company_type

	validates :name, presence: true
end
