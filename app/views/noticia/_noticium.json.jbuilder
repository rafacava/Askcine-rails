json.extract! noticium, :id, :titulo, :conteudo, :imagem, :user_id, :created_at, :updated_at
json.url noticium_url(noticium, format: :json)
