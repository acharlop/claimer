class Company < ApplicationRecord
	has_many :phones, as: :phone_numbers
	has_many :emails, as: :mailboxes
	has_many :contacts

	belongs_to :company_type

	validates :name, presence: true

	before_save :case_cleanup

	private

	def case_cleanup
		self.name.titleize!
	end
end
