class Loss < ApplicationRecord
	belongs_to :loss_address, class_name: "Address", foreign_key: :address_id
	belongs_to :loss_type

	validates :dol, :description, presence: true
	validate :dol_in_the_past

	private

	def dol_in_the_past
		if dol.present? && dol > Date.today
			errors.add(:dol, "can not be in the future")
		end
	end
end
