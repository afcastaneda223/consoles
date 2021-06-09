json.extract! article, :id, :title, :body, :user_id, :cateories_id, :image, :created_at, :updated_at
json.url article_url(article, format: :json)
