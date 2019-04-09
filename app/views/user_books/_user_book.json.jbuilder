json.extract! user_book, :id, :book_id, :user_id, :read, :reading, :favorite, :request, :created_at, :updated_at
json.url user_book_url(user_book, format: :json)
