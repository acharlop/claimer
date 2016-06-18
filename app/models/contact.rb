class Contact < ApplicationRecord
	has_many :phones, as: :phone_numbers
	has_many :emails, as: :mailboxes
  belongs_to :position
  belongs_to :company

  validates :first, :last, presence: true

	before_save :case_cleanup

	private

	def case_cleanup
		self.first.titleize!
		self.last.titleize!
	end
end
