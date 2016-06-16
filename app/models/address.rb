class Address < ApplicationRecord
	# validation using google maps?
	# validate: exists, uniquness, 
	validates :street, :zip, :city, presence: true
end
