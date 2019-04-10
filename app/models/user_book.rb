class UserBook < ApplicationRecord
  belongs_to :user
  belongs_to :book

  def read?
    read == 1
  end

  def reading?
    reading == 1
  end   

  def favorite?
    favorite == 1
  end

  def request?
    request == 1
  end

end
