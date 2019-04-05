class Book < ApplicationRecord
	belongs_to :category
	has_many :reviews
	has_many :activities
	validates :number_of_pages, presence: true
	validates :category_id, presence: true
	validates :author, presence: true
	validates :title, presence: true
	enum status: [:available,:non_available]
	after_initialize do
  	if self.new_record?
    self.status ||= :available
  end
  end
end
