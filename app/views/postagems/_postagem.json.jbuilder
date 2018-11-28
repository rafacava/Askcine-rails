json.extract! postagem, :id, :titulo, :conteudo, :imagem, :user_id, :created_at, :updated_at
json.url postagem_url(postagem, format: :json)
