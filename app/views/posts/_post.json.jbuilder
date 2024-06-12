json.extract! post, :id, :title, :body, :author, :published_at, :status, :created_at, :updated_at
json.url post_url(post, format: :json)
