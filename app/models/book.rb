class Book < ApplicationRecord
	RATINGS = [1, 2, 3, 4, 5]
	belongs_to :category
	has_many :reviews
	validates :number_of_pages, presence: true
	validates :category_id, presence: true
	validates :author, presence: true
	validates :title, presence: true
end
