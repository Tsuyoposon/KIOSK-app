json.extract! c_like, :id, :user_id, :comment_id, :created_at, :updated_at
json.url c_like_url(c_like, format: :json)