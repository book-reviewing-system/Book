class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :review
	validates :content, presence: true
	after_create :create_activity

	private
    def create_activity
      Activity.create(action: self, user: user)
    end
end
