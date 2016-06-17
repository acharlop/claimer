class Email < ApplicationRecord
	validates_format_of :email,:with => Devise::email_regexp
	validates :description, presence: true
end
