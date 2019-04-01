class Book < ApplicationRecord
	belongs_to :users
	validates :number_of_pages, presence: true
	validates :category_id, presence: true
	validates :author, presence: true
	validates :title, presence: true
end
