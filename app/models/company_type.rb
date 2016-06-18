class CompanyType < ApplicationRecord
	has_many :companies

	validates :name, presence: true

	before_save :case_cleanup

	private

	def case_cleanup
		self.name.titleize!
	end
end
