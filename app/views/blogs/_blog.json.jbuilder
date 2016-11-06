json.extract! blog, :id, :user_id, :blog_entry, :game_id, :created_at, :updated_at
json.url blog_url(blog, format: :json)