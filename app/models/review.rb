class Review < ApplicationRecord
	belongs_to :user
	belongs_to :book
	RATINGS = [1, 2, 3, 4, 5]
end
