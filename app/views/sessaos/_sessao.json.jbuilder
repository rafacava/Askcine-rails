json.extract! sessao, :id, :dia, :horario, :status, :cinema_id, :filme_id, :created_at, :updated_at
json.url sessao_url(sessao, format: :json)
