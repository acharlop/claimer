class Client < ApplicationRecord
	belongs_to :home_address, class_name: "Address", foreign_key: :address_id

	validates :first, :last, presence: true
end
