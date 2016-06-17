class Email < ApplicationRecord
	belongs_to :mailboxes, polymorphic: true

	validates_format_of :email,:with => Devise::email_regexp
	validates :description, presence: true
end
