class Request < ApplicationRecord
  belongs_to :user
  belongs_to :book
  validates :user_id, presence: true
  validates :book_id, presence: true

  def waiting?
    accept == 2
  end

  def approved?
    accept == 1
  end

  def denied?
    accept ==0 
  end
    

end
