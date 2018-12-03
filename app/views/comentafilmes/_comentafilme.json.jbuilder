json.extract! comentafilme, :id, :user_id, :filme_id, :titulo, :comentario, :created_at, :updated_at
json.url comentafilme_url(comentafilme, format: :json)
