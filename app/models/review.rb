class Review < ApplicationRecord
	belongs_to :user
	belongs_to :book
	has_many :comments, dependent: :destroy

   after_create :create_activity
   private
    def create_activity
      Activity.create(action: self,action_id: self.id, user: user)
    end
	
end
