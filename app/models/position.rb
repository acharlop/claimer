class Position < ApplicationRecord
	has_many :contacts
	
	validates :name, presence: true

	before_save :case_cleanup

	private

	def case_cleanup
		self.name.titleize!
	end
end
