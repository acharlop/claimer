class Client < ApplicationRecord
	belongs_to :home_address, class_name: "Address", foreign_key: :address_id
	has_many :phones, as: :phone_numbers

	validates :first, :last, presence: true
end
