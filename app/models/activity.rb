class Activity < ApplicationRecord
	belongs_to :user
	belongs_to :book
	enum action_type: [:reading, :read, :favorite]
end
