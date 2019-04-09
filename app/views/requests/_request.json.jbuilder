json.extract! request, :id, :user_id, :book_id, :accept, :created_at, :updated_at
json.url request_url(request, format: :json)
