json.extract! comment, :id, :user_id, :shop_id, :body, :created_at, :updated_at
json.url comment_url(comment, format: :json)