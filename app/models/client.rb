class Client < ApplicationRecord
	validates :first, :last, presence: true
end
