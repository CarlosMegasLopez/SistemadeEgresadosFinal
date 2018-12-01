json.extract! achievement, :id, :user_id, :titulo_logro, :imagen_logro, :descripcion_logro, :created_at, :updated_at
json.url achievement_url(achievement, format: :json)