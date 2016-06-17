class Address < ApplicationRecord
	has_one :client

	validates :street, :zip, :city, :state, presence: true
	validates :zip, numericality: { greater_than_or_equal_to: 10000, less_than: 99950 }

	before_save :case_cleanup

	private
	def case_cleanup
		self.street.titleize!
		self.apartment.titleize!
		self.city.titleize!
		self.state.upcase!
	end

end
