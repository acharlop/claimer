class Phone < ApplicationRecord
	belongs_to :phone_numbers, polymorphic: true

	validates :number, presence: true
	validate :valid_phone_number

	before_save :case_cleanup



	private

	def case_cleanup
		self.description.titleize!
	end


	# remove none integers from string, and leading 1
	# check length == 10
	# throws error or updates number
	def valid_phone_number
		number = self.number.scan(/\d/).join('')
		number[0] = '' if number[0] == "1"

		if number.length != 10
			errors.add(:phone, "must be a valid 10 digit phone number")
		else
			self.number = number
		end
	end

end
