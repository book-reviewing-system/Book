class User < ApplicationRecord
	has_many :books
	enum role: [:standard, :admin]
	 after_initialize do
  	if self.new_record?
    self.role ||= :standard
  end
  end
  validates :name, presence: true
  validates :email, presence: true
end
