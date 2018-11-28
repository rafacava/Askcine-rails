json.extract! cinema, :id, :nome, :endereco, :imagem, :fachada, :lat, :long, :cidade_id, :created_at, :updated_at
json.url cinema_url(cinema, format: :json)
