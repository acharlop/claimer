class Company < ApplicationRecord
	belongs_to :company_list, polymorphic: true
	belongs_to :company_type

	has_many :phones, as: :phone_numbers
	has_many :emails, as: :mailboxes


	validates :name, presence: true

	before_save :case_cleanup

	private

	def case_cleanup
		self.name.titleize!
	end
end
