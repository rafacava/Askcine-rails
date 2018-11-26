json.extract! cinema, :id, :nome, :endereco, :imagem, :fachada, :lat, :long, :cidades_id, :descricao, :created_at, :updated_at
json.url cinema_url(cinema, format: :json)
