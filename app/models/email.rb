class Email < ApplicationRecord
	belongs_to :mailboxes, polymorphic: true

	validates_format_of :email,:with => Devise::email_regexp
	validates :description, presence: true

	before_save :case_cleanup

	private

	def case_cleanup
		self.email.downcase!
	end
end
