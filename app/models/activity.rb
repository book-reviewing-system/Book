class Activity < ApplicationRecord
	belongs_to :user
	belongs_to :action, polymorphic: true

  def follow?
     self.action_type == "Relationship"
  end

  def commented?
    self.action_type == "Comment"
  end

  def reviewed?
   self.action_type == "Review"
  end

  def marked?
    self.action_type == "UserBook"

  end
end
