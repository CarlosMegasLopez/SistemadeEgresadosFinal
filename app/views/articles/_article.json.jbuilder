json.extract! article, :id, :user_id, :category_id, :titulo_noticia, :cuerpo_noticia, :created_at, :updated_at
json.url article_url(article, format: :json)