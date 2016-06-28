class Contact < ApplicationRecord
	has_many :phones, as: :phone_user
	has_many :emails, as: :mailboxes
  belongs_to :position
  has_one :company, as: :company_list

  validates :first, :last, presence: true

	before_save :case_cleanup

	private

	def case_cleanup
		self.first.titleize!
		self.last.titleize!
	end
end
