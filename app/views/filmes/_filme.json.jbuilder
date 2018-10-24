json.extract! filme, :id, :cd_filme, :nome, :ano, :diretor, :categoria, :sinopse, :imagem, :created_at, :updated_at
json.url filme_url(filme, format: :json)
